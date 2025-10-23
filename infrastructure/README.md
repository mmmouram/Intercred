# Intercred Modernization – Infraestrutura & Mapeamento Delphi → Java/React

## Visão Geral

Este diretório `infrastructure/` contém a infraestrutura de provisionamento, build e execução para o projeto de modernização do Intercred, migrando do Delphi para backend Java 21 (Spring Boot) e frontend React + TypeScript.

Abaixo estão as regras de mapeamento, organização dos artefatos, instruções de build, execução, CI/CD e critérios de aceitação.

---

## 1. Mapeamento Delphi → Java/React

### 1.1. Frontend (React + TypeScript)

- **Forms/Frames/Actions (Delphi)**  
  → `frontend/src/pages/` (páginas de fluxo)  
  → `frontend/src/components/` (componentes de UI)  
  - Estado controlado, validação e máscaras: React Hook Form + Zod
  - Exemplo: Formulário Delphi → `ContratoCapitalGiroForm.tsx`, página → `ContratoCapitalGiroPage.tsx`

- **Validação**  
  - Zod (frontend) + Bean Validation (backend)
  - Mensagens i18n (opcional, ativar via `.env`)

- **Organização**  
  - `pages/` – fluxos principais
  - `components/` – UI reusável
  - `services/` – clients HTTP (Axios/Fetch)
  - `contexts/` – auth, tema
  - `hooks/` – lógica reutilizável
  - `utils/` – helpers/máscaras
  - `tests/` – Vitest + React Testing Library

- **UX**  
  - Estados de loading/erro, toasts, acessibilidade básica

### 1.2. Backend (Java 21 + Spring Boot)

- **DataModules/Queries (Delphi)**  
  → `backend/src/main/java/com/intercred/repository/` (Spring Data JPA/Hibernate)  
  → `backend/src/main/java/com/intercred/service/` (regras de negócio)

- **Regras de tela/eventos**  
  → `service/` (negócio)  
  → `controller/` (REST, controladores finos)

- **Tipagem/records**  
  → `domain/` (entidades JPA)  
  → `model/` (DTOs), enums, datas (`java.time`)

- **Tratamento de erros**  
  → `exception/` (BusinessException, GlobalExceptionHandler)  
  - RFC7807 Problem Details (REST)

- **Utilidades comuns**  
  → `util/` (helpers, mapeadores MapStruct)

- **Relatórios antigos**  
  → Endpoints REST + export (CSV/PDF stub)  
  → Telas em `frontend/pages/`

---

## 2. Build, Configuração e Persistência

- **Build Backend**  
  - `pom.xml` com: Spring Web, Validation, Spring Data JPA, OpenAPI/Swagger, Lombok, MapStruct, Flyway, Test (JUnit/MockMVC/Testcontainers)
  - Gera `/backend/target/` com JAR executável

- **Configuração**  
  - `application.yml` (dev/test/prod), perfis, logs estruturados (JSON)
  - Variáveis de ambiente via `env/.env.example`

- **API**  
  - Controllers REST em `controller/`
  - (Se usar `controllers/`, manter apenas facades ou um README explicando deprecação)

- **Persistência**  
  - Entidades em `domain/`
  - Repositórios em `repository/`
  - Migrations em `database/sql/` (Flyway: `V1__init.sql`, ...)

- **DTOs & Mappers**  
  - `model/` + MapStruct (`util/`)

- **Validação**  
  - Bean Validation + mensagens i18n (`messages.properties`)

- **Testes**  
  - `/test/java/com/intercred/app/` com JUnit5 + Testcontainers (DB)
  - Cobertura mínima [X%] nos módulos críticos

- **Observabilidade**  
  - Logs estruturados, métricas e traços prontos para integração posterior

---

## 3. Frontend (React + TypeScript)

- **Stack**  
  - Vite (ou CRA), TypeScript, React Router, Axios/Fetch, React Hook Form + Zod, ESLint/Prettier

- **Organização**  
  - `pages/`, `components/`, `services/`, `contexts/`, `hooks/`, `utils/`, `tests/`

- **Testes**  
  - Vitest + React Testing Library (smoke e formulários críticos)

- **Integração**  
  - `.env` (URL da API), i18n opcional

---

## 4. CI/CD & Infraestrutura

- **GitHub Actions**  
  - Workflows em `/.github/workflows/`, `/backend/.github/workflows/`, `/frontend/.github/workflows/`
  - Jobs de build, testes e lint

- **Infraestrutura**  
  - `infrastructure/`:
    - `Dockerfile.backend` (Java 21 + Spring Boot)
    - `Dockerfile.frontend` (React + Vite)
    - `docker-compose.yml` (backend, frontend, banco)
    - Este `README.md` com instruções

- **Ambientes**  
  - `env/.env.example` para backend e frontend
  - `_temp/logs/` apenas para logs locais de DEV (não commitar em PROD)

---

## 5. Entradas (preencher conforme projeto)

- **Repositório Delphi / pasta raiz:** [link ou path]
- **Banco de dados:** [PostgreSQL/SQL Server/etc.] + credenciais de DEV
- **Autenticação:** [JWT/OAuth2/Keycloak/etc.]
- **Domínios prioritários:** [ex.: crédito, clientes, contratos]
- **Requisitos não-funcionais:** [latência, throughput, SLO, LGPD]

---

## 6. Entregáveis obrigatórios

- Código fonte completo no layout acima
- OpenAPI (`swagger.yaml`/`json`) em `resources/`
- Matriz de equivalência (`MATRIZ_EQUIVALENCIA.md` ou CSV) mapeando Form/Action/Relatório Delphi → page/component React, service, endpoint
- Coleção Postman/Insomnia para os principais endpoints
- README de migração explicando decisões, gaps, diferenças comportamentais e TODOs
- Scripts de build: `mvn clean verify` (backend), `npm run build` (frontend)
- Pipelines em `/.github/workflows/*.yml` para backend e frontend

---

## 7. Critérios de aceitação

- Build Maven gera `/backend/target/` com testes verdes; frontend build sem erros
- Endpoints e fluxos UI equivalentes ao Delphi (documente diferenças justificadas)
- Cobertura de testes ≥ [X%] nos módulos críticos
- Migrations executam do zero (ambiente limpo) e dados principais são carregados
- Linters/formatadores aprovam o código; logs estruturados funcionam

---

## 8. Como rodar localmente (DEV)

1. **Configurar variáveis de ambiente:**
   - Copie `env/.env.example` para `env/.env` e ajuste conforme seu ambiente
   - Copie `frontend/.env.example` para `frontend/.env` e ajuste

2. **Subir com Docker Compose:**
   ```sh
   docker compose -f infrastructure/docker-compose.yml up --build
   ```

3. **Acessar:**
   - Backend: http://localhost:8080 (Swagger: `/swagger-ui.html`)
   - Frontend: http://localhost:4173

4. **Logs:**
   - Backend: `_temp/logs/` (dev) ou `/logs` (prod)
   - Frontend: console do navegador

5. **Testes:**
   - Backend: `mvn clean verify`
   - Frontend: `npm run test`

---

## 9. Referências

- [MATRIZ_EQUIVALENCIA.md](../MATRIZ_EQUIVALENCIA.md)
- [swagger.yaml](../backend/src/main/resources/swagger.yaml)
- [POSTMAN_COLLECTION.json](../POSTMAN_COLLECTION.json)
- [README.md](../README.md)
- [env/.env.example](../env/.env.example)
- [frontend/.env.example](../frontend/.env.example)

---

## 10. Observações

- Para dúvidas sobre equivalência Delphi → Java/React, consulte a matriz e os comentários nos arquivos.
- Para gaps, limitações ou decisões de arquitetura, veja o README principal e a documentação de migração.
- Para logs, métricas e observabilidade, consulte `application.yml` e os exemplos de configuração.

---

**Intercred Modernization – Powered by Java 21, Spring Boot, React, Vite, PostgreSQL, Docker, GitHub Actions**