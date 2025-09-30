import { defineConfig, loadEnv } from 'vite';
import react from '@vitejs/plugin-react';
import path from 'path';

// https://vitejs.dev/config/
export default defineConfig(({ mode }) => {
  // Load .env files based on the current mode (development, production, etc.)
  const env = loadEnv(mode, process.cwd(), '');

  return {
    plugins: [react()],
    resolve: {
      alias: {
        '@pages': path.resolve(__dirname, 'src/pages'),
        '@components': path.resolve(__dirname, 'src/components'),
        '@services': path.resolve(__dirname, 'src/services'),
        '@contexts': path.resolve(__dirname, 'src/contexts'),
        '@hooks': path.resolve(__dirname, 'src/hooks'),
        '@utils': path.resolve(__dirname, 'src/utils'),
      },
    },
    server: {
      port: 5173,
      open: true,
      cors: {
        origin: env.VITE_CORS_ALLOWED_ORIGINS || 'http://localhost:5173',
        credentials: true,
      },
      proxy: {
        // Proxy API requests to backend
        '/api': {
          target: env.VITE_API_BASE_URL || 'http://localhost:8080',
          changeOrigin: true,
          rewrite: (path) => path.replace(/^\/api/, ''),
        },
      },
    },
    build: {
      outDir: 'dist',
      sourcemap: true,
      target: 'es2020',
    },
    define: {
      'process.env': {},
    },
    test: {
      environment: 'jsdom',
      globals: true,
      setupFiles: './src/tests/setup.ts',
      coverage: {
        reporter: ['text', 'json', 'html'],
        exclude: ['**/tests/**', '**/mocks/**', '**/*.d.ts'],
      },
    },
  };
});