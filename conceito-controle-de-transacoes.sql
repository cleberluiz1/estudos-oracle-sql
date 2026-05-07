-- Conceito: Controle de transações
-- Objetivo: entender como o Oracle gerencia o salvamento de dados
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

-- -------------------------------------------------------
-- COMMIT
-- Confirma a transação e salva os dados definitivamente.
-- Antes do COMMIT, as alterações são visíveis apenas para
-- o usuário que as fez — outros usuários não enxergam.
-- -------------------------------------------------------

INSERT INTO hr.employees (first_name, salary)
VALUES ('Exemplo', 5000);

COMMIT; -- dados salvos para todos os usuários

-- -------------------------------------------------------
-- ROLLBACK
-- Desfaz todas as alterações desde o último COMMIT.
-- Funciona como um "Ctrl+Z" do banco de dados.
-- -------------------------------------------------------

INSERT INTO hr.employees (first_name, salary)
VALUES ('Exemplo', 5000);

ROLLBACK; -- operação desfeita, como se nunca tivesse ocorrido

-- -------------------------------------------------------
-- RESUMO
-- INSERT/UPDATE/DELETE → dados em estado intermediário
-- COMMIT              → confirma e salva definitivamente
-- ROLLBACK            → desfaz tudo desde o último COMMIT
-- -------------------------------------------------------
