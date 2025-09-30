# Intercred Modernization – Delphi → Java 21 (Spring Boot) + React

## Visão Geral

Este projeto moderniza o sistema Intercred, migrando do Delphi para uma arquitetura moderna baseada em **Java 21 + Spring Boot** no backend e **React + TypeScript** no frontend. O objetivo é garantir equivalência funcional, melhorando manutenibilidade, escalabilidade, observabilidade e integração contínua.

---

## 1. Regras de Mapeamento Delphi → Java/React

| Delphi (Legado)                | Java/React (Moderno)                                                                                      | Observações                                                                                   |
|--------------------------------|----------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| **Forms/Frames/Actions**       | `frontend/src/pages/` (páginas), `frontend/src/components/` (componentes)                                | Estado controlado, validação e máscaras (React Hook Form + Zod)                              |
| **DataModules/Queries**        | `backend/src/main/java/com/intercred/repository/` (Spring Data JPA), `service/` (regras de negócio)      | Repository para persistência, Service para lógica de negócio                                 |
| **Regras de tela/eventos**     | `backend/src/main/java/com/intercred/service/` (negócio), `controller/` (REST controllers finos)         | Controller apenas orquestra, regra fica no service                                           |
| **Tipagem/records**            | `domain/` (entidades JPA), `model/` (DTOs), enums, datas (`java.time`)                                   | Uso de Lombok, MapStruct, Bean Validation                                                    |
| **Tratamento de erros**        | `exception/` (BusinessException, GlobalExceptionHandler)                                                 | Problem Details (RFC7807), advice global, i18n                                               |
| **Utilidades comuns**          | `util/` (helpers, mapeadores MapStruct)                                                                  | Helpers, conversores, mapeadores bidirecionais                                               |
| **Relatórios antigos**         | Endpoints REST + export (CSV/PDF stub), telas em `frontend/pages/`                                       | Exportação pode ser stub inicial, depois PDF/CSV real                                         |

---

## 2. Backend (Java 21 + Spring Boot)

- **Build:**  
  - `pom.xml` inclui: Spring Web, Validation, Spring Data JPA, OpenAPI/Swagger, Lombok, MapStruct, Flyway/Liquibase, Test (JUnit/MockMVC/Testcontainers)
  - Gera `/backend/target/` com JAR executável

- **Configuração:**  
  - `application.yml` (dev/test/prod), perfis, logs estruturados (JSON)

- **API:**  
  - Controllers REST em `controller/`  
  - (Se usar `controllers/`, manter apenas facades ou um README explicando deprecação)

- **Persistência:**  
  - Entidades em `domain/`  
  - Repositórios em `repository/`  
  - Migrations em `database/sql/` (Flyway: `V1__init.sql`, ...)

- **DTOs & Mappers:**  
  - `model/` + MapStruct (`util/`)

- **Validação:**  
  - Bean Validation + mensagens i18n (`messages.properties`)

- **Testes:**  
  - `/test/java/com/intercred/app/` com JUnit5 + Testcontainers (DB), cobertura mínima [X%]

- **Observabilidade:**  
  - Logs estruturados, métricas e traços prontos para integração posterior

---

## 3. Frontend (React + TypeScript)

- **Stack:**  
  - Vite (ou CRA), TypeScript, React Router, Axios/Fetch, React Hook Form + Zod, ESLint/Prettier

- **Organização:**  
  - `pages/` (fluxos principais)  
  - `components/` (UI reusável)  
  - `services/` (clients HTTP)  
  - `contexts/` (auth, tema)  
  - `hooks/` (lógica reutilizável)  
  - `utils/` (helpers/máscaras)  
  - `grupos/` (pastas por domínio funcional, se necessário)

- **UX:**  
  - Estados de loading/erro, toasts, acessibilidade básica

- **Testes:**  
  - Vitest + React Testing Library (smoke e formulários críticos)

- **Integração:**  
  - `.env` (URL da API), i18n opcional

---

## 4. CI/CD & Infraestrutura

- **GitHub Actions:**  
  - Workflows em `/.github/workflows/`, `/backend/.github/workflows/`, `/frontend/.github/workflows/`  
  - Jobs de build, testes e lint

- **Infraestrutura:**  
  - `infrastructure/`:
    - `Dockerfile.backend` (Java 21 + Spring Boot)
    - `Dockerfile.frontend` (React + Vite)
    - `docker-compose.yml` (backend, frontend, banco)
    - `README.md` com instruções de IaC

- **Ambientes:**  
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
- Matriz de equivalência (`MATRIZ_EQUIVALENCIA.md` ou CSV) mapeando Form/Action/Relatório Delphi → page/component React, service, endpoint (local: `/database/sql/` ou raiz)
- Coleção Postman/Insomnia para os principais endpoints
- README de migração explicando decisões, gaps, diferenças comportamentais e TODOs
- Scripts de build: `mvn clean verify` (backend), `npm/yarn build` (frontend)
- Pipelines em `/.github/workflows/*.yml` para backend e frontend

---

## 7. Critérios de Aceitação

- Build Maven gera `/backend/target/` com testes verdes; frontend build sem erros
- Endpoints e fluxos UI equivalentes ao Delphi (documente diferenças justificadas)
- Cobertura de testes ≥ [X%] nos módulos críticos
- Migrations executam do zero (ambiente limpo) e dados principais são carregados
- Linters/formatadores aprovam o código; logs estruturados funcionam

---

## 8. Referências

- [MATRIZ_EQUIVALENCIA.md](./MATRIZ_EQUIVALENCIA.md)
- [swagger.yaml](./backend/src/main/resources/swagger.yaml)
- [POSTMAN_COLLECTION.json](./POSTMAN_COLLECTION.json)
- [infrastructure/README.md](./infrastructure/README.md)
- [env/.env.example](./env/.env.example)
- [frontend/.env.example](./frontend/.env.example)

---

**Intercred Modernization – Powered by Java 21, Spring Boot, React, Vite, PostgreSQL, Docker, GitHub Actions**