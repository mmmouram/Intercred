-- V1__init.sql
-- Flyway migration: Inicialização do schema Intercred Modernization
-- Gera tabelas principais para ContratoCapitalGiro, Emprestimo, SimulacaoEmprestimo, Cedente, Produto, Usuário
-- Atenção: Ajuste tipos e constraints conforme necessário para o banco alvo (PostgreSQL)

-- =========================
-- Tabela: cedente
-- =========================
CREATE TABLE cedente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    documento VARCHAR(20) NOT NULL,
    tipo VARCHAR(10) NOT NULL, -- PJ/CPF/CNPJ
    email VARCHAR(120),
    telefone VARCHAR(30),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================
-- Tabela: produto
-- =========================
CREATE TABLE produto (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    codigo VARCHAR(20) NOT NULL,
    tipo VARCHAR(30) NOT NULL, -- Ex: "Capital de Giro", "Empréstimo", "Simulação"
    status VARCHAR(20) NOT NULL DEFAULT 'ATIVO',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================
-- Tabela: usuario
-- =========================
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL,
    roles VARCHAR(100) NOT NULL, -- Ex: "USER,ADMIN"
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================
-- Tabela: contrato_capital_giro
-- =========================
CREATE TABLE contrato_capital_giro (
    id SERIAL PRIMARY KEY,
    numero_contrato VARCHAR(30) NOT NULL,
    cedente_id INTEGER NOT NULL REFERENCES cedente(id),
    produto_id INTEGER NOT NULL REFERENCES produto(id),
    data_operacao DATE NOT NULL,
    valor_referencia NUMERIC(18,2) NOT NULL,
    valor_financiado NUMERIC(18,2) NOT NULL,
    valor_liquido NUMERIC(18,2) NOT NULL,
    taxa_mes NUMERIC(8,4) NOT NULL,
    taxa_efetiva NUMERIC(8,4) NOT NULL,
    taxa_iof NUMERIC(8,4) NOT NULL,
    taxa_iof_complementar NUMERIC(8,4) NOT NULL,
    valor_iof NUMERIC(18,2) NOT NULL,
    valor_iof_complementar NUMERIC(18,2) NOT NULL,
    valor_tac NUMERIC(18,2) NOT NULL,
    valor_custo_cobranca NUMERIC(18,2) NOT NULL,
    valor_doc NUMERIC(18,2) NOT NULL,
    valor_custo_administrativo NUMERIC(18,2) NOT NULL,
    valor_outras_despesas NUMERIC(18,2) NOT NULL,
    taxa_abertura_credito NUMERIC(8,4) NOT NULL,
    total_parcelas INTEGER NOT NULL,
    data_primeira_parcela DATE NOT NULL,
    dias_carencia INTEGER NOT NULL,
    parcelas_carencia INTEGER NOT NULL,
    tipo_pagto_iof VARCHAR(2) NOT NULL,
    tipo_pagto_tac VARCHAR(2) NOT NULL,
    tipo_contrato VARCHAR(2) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'ABERTO',
    usuario_comercial VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================
-- Tabela: emprestimo
-- =========================
CREATE TABLE emprestimo (
    id SERIAL PRIMARY KEY,
    numero_contrato VARCHAR(30) NOT NULL,
    cedente_id INTEGER NOT NULL REFERENCES cedente(id),
    produto_id INTEGER NOT NULL REFERENCES produto(id),
    data_operacao DATE NOT NULL,
    valor_referencia NUMERIC(18,2) NOT NULL,
    valor_financiado NUMERIC(18,2) NOT NULL,
    valor_liquido NUMERIC(18,2) NOT NULL,
    taxa_mes NUMERIC(8,4) NOT NULL,
    taxa_efetiva NUMERIC(8,4) NOT NULL,
    taxa_iof NUMERIC(8,4) NOT NULL,
    taxa_iof_complementar NUMERIC(8,4) NOT NULL,
    valor_iof NUMERIC(18,2) NOT NULL,
    valor_iof_complementar NUMERIC(18,2) NOT NULL,
    valor_tac NUMERIC(18,2) NOT NULL,
    valor_custo_cobranca NUMERIC(18,2) NOT NULL,
    valor_doc NUMERIC(18,2) NOT NULL,
    valor_custo_administrativo NUMERIC(18,2) NOT NULL,
    valor_outras_despesas NUMERIC(18,2) NOT NULL,
    taxa_abertura_credito NUMERIC(8,4) NOT NULL,
    total_parcelas INTEGER NOT NULL,
    data_primeira_parcela DATE NOT NULL,
    dias_carencia INTEGER NOT NULL,
    parcelas_carencia INTEGER NOT NULL,
    tipo_pagto_iof VARCHAR(2) NOT NULL,
    tipo_pagto_tac VARCHAR(2) NOT NULL,
    tipo_contrato VARCHAR(2) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'ABERTO',
    usuario_comercial VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================
-- Tabela: simulacao_emprestimo
-- =========================
CREATE TABLE simulacao_emprestimo (
    id SERIAL PRIMARY KEY,
    numero_simulacao VARCHAR(30) NOT NULL,
    cedente_id INTEGER NOT NULL REFERENCES cedente(id),
    produto_id INTEGER NOT NULL REFERENCES produto(id),
    data_operacao DATE NOT NULL,
    valor_referencia NUMERIC(18,2) NOT NULL,
    valor_financiado NUMERIC(18,2) NOT NULL,
    valor_liquido NUMERIC(18,2) NOT NULL,
    taxa_mes NUMERIC(8,4) NOT NULL,
    taxa_efetiva NUMERIC(8,4) NOT NULL,
    taxa_iof NUMERIC(8,4) NOT NULL,
    taxa_iof_complementar NUMERIC(8,4) NOT NULL,
    valor_iof NUMERIC(18,2) NOT NULL,
    valor_iof_complementar NUMERIC(18,2) NOT NULL,
    valor_tac NUMERIC(18,2) NOT NULL,
    valor_custo_cobranca NUMERIC(18,2) NOT NULL,
    valor_doc NUMERIC(18,2) NOT NULL,
    valor_custo_administrativo NUMERIC(18,2) NOT NULL,
    valor_outras_despesas NUMERIC(18,2) NOT NULL,
    taxa_abertura_credito NUMERIC(8,4) NOT NULL,
    total_parcelas INTEGER NOT NULL,
    data_primeira_parcela DATE NOT NULL,
    dias_carencia INTEGER NOT NULL,
    parcelas_carencia INTEGER NOT NULL,
    tipo_pagto_iof VARCHAR(2) NOT NULL,
    tipo_pagto_tac VARCHAR(2) NOT NULL,
    tipo_contrato VARCHAR(2) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'ABERTO',
    usuario_comercial VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================
-- Índices e constraints extras
-- =========================
CREATE INDEX idx_contrato_capital_giro_cedente ON contrato_capital_giro (cedente_id);
CREATE INDEX idx_contrato_capital_giro_produto ON contrato_capital_giro (produto_id);
CREATE INDEX idx_emprestimo_cedente ON emprestimo (cedente_id);
CREATE INDEX idx_emprestimo_produto ON emprestimo (produto_id);
CREATE INDEX idx_simulacao_emprestimo_cedente ON simulacao_emprestimo (cedente_id);
CREATE INDEX idx_simulacao_emprestimo_produto ON simulacao_emprestimo (produto_id);

-- =========================
-- Dados iniciais (opcional, para DEV)
-- =========================
INSERT INTO produto (nome, codigo, tipo, status) VALUES
  ('Capital de Giro', 'CAPGIRO', 'Capital de Giro', 'ATIVO'),
  ('Empréstimo', 'EMPREST', 'Empréstimo', 'ATIVO'),
  ('Simulação', 'SIMULACAO', 'Simulação', 'ATIVO');

INSERT INTO cedente (nome, documento, tipo, email, telefone) VALUES
  ('Empresa ABC', '12345678000199', 'PJ', 'abc@empresa.com', '31999990000'),
  ('Empresa XYZ', '98765432000188', 'PJ', 'xyz@empresa.com', '31988880000');

INSERT INTO usuario (username, password_hash, nome, email, roles) VALUES
  ('admin', '$2a$10$7QJ8QwQwQwQwQwQwQwQwQeQwQwQwQwQwQwQwQwQwQwQwQwQwQwQw', 'Administrador', 'admin@intercred.com.br', 'ADMIN,USER'),
  ('jose', '$2a$10$7QJ8QwQwQwQwQwQwQwQwQeQwQwQwQwQwQwQwQwQwQwQwQwQwQwQw', 'José da Silva', 'jose@intercred.com.br', 'USER');

-- =========================
-- Observações
-- - Ajuste os tipos e tamanhos conforme necessário para o banco de dados real.
-- - Adicione constraints de unicidade, foreign keys, e triggers conforme regras de negócio.
-- - Para produção, remova ou ajuste os dados de exemplo.
-- - Para equivalência Delphi → Java/React, veja MATRIZ_EQUIVALENCIA.md.
-- - Para exemplos de uso, consulte POSTMAN_COLLECTION.json.
-- - Para documentação, veja README.md e infrastructure/README.md.

-- Fim do V1__init.sql