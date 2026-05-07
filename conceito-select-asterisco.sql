-- Conceito: SELECT * (asterisco / wildcard)
-- Objetivo: retornar todas as colunas de uma tabela
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

-- -------------------------------------------------------
-- SELECT * — retorna TODAS as colunas da tabela
-- Útil para explorar a estrutura de uma tabela rapidamente
-- -------------------------------------------------------

SELECT * FROM hr.employees;

-- -------------------------------------------------------
-- ATENÇÃO: em ambiente profissional o SELECT * é evitado
-- pois traz colunas desnecessárias, consome mais memória
-- e dificulta a manutenção quando a tabela muda.
-- -------------------------------------------------------

-- Forma recomendada em produção — especificar as colunas:
SELECT first_name, last_name, salary
FROM hr.employees;

-- -------------------------------------------------------
-- RESUMO
-- SELECT *          → todas as colunas (estudos/exploração)
-- SELECT col1, col2 → colunas específicas (produção)
-- -------------------------------------------------------
