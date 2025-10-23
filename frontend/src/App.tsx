import React, { Suspense, lazy } from "react";
import { Routes, Route, Navigate } from "react-router-dom";
import { useAuth } from "./contexts/AuthContext";
import { useTheme } from "./contexts/ThemeContext";

// Lazy load pages for code splitting
const ContratoCapitalGiroPage = lazy(() => import("@pages/ContratoCapitalGiroPage"));
const EmprestimoPage = lazy(() => import("@pages/EmprestimoPage"));
const SimulacaoEmprestimoPage = lazy(() => import("@pages/SimulacaoEmprestimoPage"));
const NotFoundPage = lazy(() => import("@pages/NotFoundPage"));

function App() {
  const { isAuthenticated } = useAuth();
  const { theme } = useTheme();

  return (
    <div className={`app-root theme-${theme}`}>
      <Suspense fallback={<div className="loading">Carregando...</div>}>
        <Routes>
          <Route
            path="/"
            element={
              isAuthenticated ? (
                <Navigate to="/contrato-capital-giro" replace />
              ) : (
                <Navigate to="/emprestimo" replace />
              )
            }
          />
          <Route
            path="/contrato-capital-giro/*"
            element={
              isAuthenticated ? (
                <ContratoCapitalGiroPage />
              ) : (
                <Navigate to="/emprestimo" replace />
              )
            }
          />
          <Route
            path="/emprestimo/*"
            element={<EmprestimoPage />}
          />
          <Route
            path="/simulacao-emprestimo/*"
            element={
              isAuthenticated ? (
                <SimulacaoEmprestimoPage />
              ) : (
                <Navigate to="/emprestimo" replace />
              )
            }
          />
          <Route path="*" element={<NotFoundPage />} />
        </Routes>
      </Suspense>
    </div>
  );
}

export default App;