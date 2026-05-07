-- Exercício: SELECT com WHERE usando LIKE para busca parcial
-- Objetivo: listar funcionários cujo sobrenome contém 'ja'
-- em qualquer posição, ignorando maiúsculas e minúsculas
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

SELECT first_name, last_name, email
FROM hr.employees
WHERE LOWER(last_name) LIKE '%ja%';

-- -------------------------------------------------------
-- COMO FUNCIONA O LIKE
-- O % é chamado de curinga (wildcard) e substitui
-- qualquer sequência de caracteres em qualquer posição
-- -------------------------------------------------------

-- '%ja%' → contém 'ja' em qualquer posição
-- 'ja%'  → começa com 'ja'
-- '%ja'  → termina com 'ja'

-- Exemplos:
SELECT first_name, last_name FROM hr.employees
WHERE LOWER(last_name) LIKE 'ja%';   -- começa com 'ja'

SELECT first_name, last_name FROM hr.employees
WHERE LOWER(last_name) LIKE '%ja';   -- termina com 'ja'

SELECT first_name, last_name FROM hr.employees
WHERE LOWER(last_name) LIKE '%ja%';  -- contém 'ja' em qualquer lugar

-- -------------------------------------------------------
-- ATENÇÃO: LOWER com LIKE
-- Assim como no WHERE com =, o LIKE também é case-sensitive
-- Por isso usamos LOWER para converter o valor da coluna
-- para minúsculo e comparamos com o valor também em minúsculo
-- -------------------------------------------------------

-- -------------------------------------------------------
-- RESUMO
-- LIKE '%valor%' → contém o valor em qualquer posição
-- LIKE 'valor%'  → começa com o valor
-- LIKE '%valor'  → termina com o valor
-- % substitui qualquer sequência de caracteres
-- -------------------------------------------------------
