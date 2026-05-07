-- Conceito: Notação in-fixada e pré-fixada
-- Objetivo: entender a posição do operador em relação aos valores
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

-- -------------------------------------------------------
-- NOTAÇÃO IN-FIXADA
-- O operador vem ENTRE os valores
-- -------------------------------------------------------

-- Operador > entre salary e 6000
SELECT first_name, salary
FROM hr.employees
WHERE salary > 6000;

-- Operador BETWEEN entre salary e os valores 5000 e 8000
SELECT first_name, salary
FROM hr.employees
WHERE salary BETWEEN 5000 AND 8000;

-- Operador || entre first_name e last_name
SELECT first_name || ' ' || last_name AS nome_completo
FROM hr.employees;

-- -------------------------------------------------------
-- NOTAÇÃO PRÉ-FIXADA
-- O operador/função vem ANTES do valor
-- -------------------------------------------------------

-- Função UPPER vem antes de first_name
SELECT UPPER(first_name) AS nome_maiusculo
FROM hr.employees;

-- Função LENGTH vem antes de first_name
SELECT LENGTH(first_name) AS tamanho_nome
FROM hr.employees;

-- Operador NOT vem antes da condição
SELECT first_name, salary
FROM hr.employees
WHERE NOT salary > 6000;

-- -------------------------------------------------------
-- RESUMO
-- In-fixada  → operador entre os valores: salary > 6000
-- Pré-fixada → operador antes do valor:   UPPER(first_name)
-- -------------------------------------------------------
