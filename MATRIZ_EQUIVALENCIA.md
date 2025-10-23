# MATRIZ_EQUIVALENCIA.md

# Matriz de Equivalência Delphi → Java/React

Este documento apresenta as regras e o mapeamento de equivalência entre os artefatos do sistema legado Delphi e a arquitetura moderna baseada em Java 21 (Spring Boot) no backend e React + TypeScript no frontend.

---

## 1. Regras Gerais de Mapeamento

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
- **Configuração:**  
  - `application.yml` (dev/test/prod), perfis, logs estruturados (JSON)
- **API:**  
  - Controllers REST em `controller/`  
  - (Se usar `controllers/`, manter apenas facades ou um README explicando deprecação)
- **Persistência:**  
  - Entidades em `domain/`  
  - Repositórios em `repository/`  
  - Migrations em `database/sql/` (Flyway: `V1__init.sql`, etc.)
- **DTOs & Mappers:**  
  - `model/` + MapStruct (`util/`)
- **Validação:**  
  - Bean Validation + mensagens i18n (`messages.properties`)
- **Testes:**  
  - `/test/java/com/intercred/app/` com JUnit5 + Testcontainers (DB), cobertura mínima [X%]
- **Observabilidade:**  
  - Logs, métricas e traços prontos para integração posterior

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

## 8. Exemplo de Mapeamento Delphi → Java/React

| Delphi (Form/Action/Relatório)         | React Page/Component                | Backend Service/Endpoint                        | Observações                      |
|----------------------------------------|-------------------------------------|-------------------------------------------------|----------------------------------|
| UFrmCadEmprestimoBoletoOperacao.pas    | ContratoCapitalGiroPage.tsx, ContratoCapitalGiroForm.tsx | ContratoCapitalGiroService, /api/contrato-capital-giro | CRUD completo, validação, i18n   |
| UFrmCadEmprestimoSimulacao.pas         | SimulacaoEmprestimoPage.tsx, SimulacaoEmprestimoForm.tsx | SimulacaoEmprestimoService, /api/simulacao-emprestimo | CRUD, simulação, validação       |
| UFrmCadEmprestimoBoletoOperacao.pas    | EmprestimoPage.tsx, EmprestimoForm.tsx | EmprestimoService, /api/emprestimos             | CRUD empréstimo, validação       |
| UFrmPesquisaCedenteSacado.pas          | (modal) componente de busca         | CedenteService, /api/cedentes                   | Busca cedente, autocomplete      |
| UFrmVisualizaMensagem.pas              | Modal de mensagem                   | (não aplicável)                                 | Mensagens/toasts                 |
| UQRCedulaCreditoBancarioPJ222.pas      | (relatório PDF stub/export)         | Endpoint de exportação (CSV/PDF)                | Exportação futura                |

---

## 9. Observações Finais

- Para dúvidas sobre equivalência Delphi → Java/React, consulte esta matriz e os comentários nos arquivos.
- Para gaps, limitações ou decisões de arquitetura, veja o README principal e a documentação de migração.
- Para logs, métricas e observabilidade, consulte `application.yml` e os exemplos de configuração.
- Para exemplos de uso, consulte a coleção Postman/Insomnia e os testes automatizados.

---

**Intercred Modernization – Powered by Java 21, Spring Boot, React, Vite, PostgreSQL, Docker, GitHub Actions**