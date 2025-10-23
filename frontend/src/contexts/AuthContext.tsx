import React, { createContext, useContext, useState, useEffect, ReactNode } from "react";

type User = {
  id: string;
  username: string;
  roles: string[];
  [key: string]: any;
};

type AuthContextType = {
  user: User | null;
  isAuthenticated: boolean;
  login: (username: string, password: string) => Promise<void>;
  logout: () => void;
  loading: boolean;
  error: string | null;
  token: string | null;
};

const AuthContext = createContext<AuthContextType | undefined>(undefined);

const AUTH_TOKEN_KEY = "intercred_auth_token";
const USER_KEY = "intercred_user";

const API_BASE_URL = import.meta.env.VITE_API_BASE_URL || "http://localhost:8080";
const AUTH_TYPE = import.meta.env.VITE_AUTH_TYPE || "jwt";

export const AuthProvider = ({ children }: { children: ReactNode }) => {
  const [user, setUser] = useState<User | null>(null);
  const [token, setToken] = useState<string | null>(() => localStorage.getItem(AUTH_TOKEN_KEY));
  const [loading, setLoading] = useState<boolean>(false);
  const [error, setError] = useState<string | null>(null);

  // On mount, try to restore user from localStorage
  useEffect(() => {
    if (token && !user) {
      const storedUser = localStorage.getItem(USER_KEY);
      if (storedUser) {
        setUser(JSON.parse(storedUser));
      } else {
        // Optionally, fetch user profile with token
        fetchUserProfile(token);
      }
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const fetchUserProfile = async (jwt: string) => {
    setLoading(true);
    setError(null);
    try {
      const resp = await fetch(`${API_BASE_URL}/api/auth/me`, {
        headers: {
          Authorization: `Bearer ${jwt}`,
        },
      });
      if (!resp.ok) throw new Error("Falha ao obter perfil do usuário.");
      const data = await resp.json();
      setUser(data);
      localStorage.setItem(USER_KEY, JSON.stringify(data));
    } catch (err: any) {
      setUser(null);
      localStorage.removeItem(USER_KEY);
      setError("Sessão expirada ou inválida.");
      setToken(null);
      localStorage.removeItem(AUTH_TOKEN_KEY);
    } finally {
      setLoading(false);
    }
  };

  const login = async (username: string, password: string) => {
    setLoading(true);
    setError(null);
    try {
      let resp: Response;
      if (AUTH_TYPE === "jwt") {
        resp = await fetch(`${API_BASE_URL}/api/auth/login`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ username, password }),
        });
        if (!resp.ok) {
          const errData = await resp.json().catch(() => ({}));
          throw new Error(errData.message || "Usuário ou senha inválidos.");
        }
        const data = await resp.json();
        if (!data.token) throw new Error("Token não recebido.");
        setToken(data.token);
        localStorage.setItem(AUTH_TOKEN_KEY, data.token);
        setUser(data.user);
        localStorage.setItem(USER_KEY, JSON.stringify(data.user));
      } else if (AUTH_TYPE === "keycloak" || AUTH_TYPE === "oauth2") {
        // Implement OAuth2/Keycloak login flow if needed
        throw new Error("Tipo de autenticação não suportado nesta build.");
      } else {
        throw new Error("Configuração de autenticação inválida.");
      }
      setError(null);
    } catch (err: any) {
      setError(err.message || "Erro ao autenticar.");
      setUser(null);
      setToken(null);
      localStorage.removeItem(AUTH_TOKEN_KEY);
      localStorage.removeItem(USER_KEY);
    } finally {
      setLoading(false);
    }
  };

  const logout = () => {
    setUser(null);
    setToken(null);
    setError(null);
    localStorage.removeItem(AUTH_TOKEN_KEY);
    localStorage.removeItem(USER_KEY);
  };

  const isAuthenticated = !!user && !!token;

  return (
    <AuthContext.Provider
      value={{
        user,
        isAuthenticated,
        login,
        logout,
        loading,
        error,
        token,
      }}
    >
      {children}
    </AuthContext.Provider>
  );
};

export function useAuth(): AuthContextType {
  const ctx = useContext(AuthContext);
  if (!ctx) {
    throw new Error("useAuth must be used within an AuthProvider");
  }
  return ctx;
}

export default AuthContext;