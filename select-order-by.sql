-- Exercício: SELECT com ORDER BY
-- Objetivo: listar funcionários ordenados pelo primeiro nome
-- Observação: ORDER BY padrão é crescente (ASC) — do A ao Z
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

SELECT first_name, last_name, email
FROM hr.employees
ORDER BY first_name;

-- -------------------------------------------------------
-- VARIAÇÕES DO ORDER BY
-- -------------------------------------------------------

-- Ordem crescente (padrão — não precisa escrever ASC)
SELECT first_name, last_name, email
FROM hr.employees
ORDER BY first_name ASC;

-- Ordem decrescente (do Z ao A)
SELECT first_name, last_name, email
FROM hr.employees
ORDER BY first_name DESC;

-- -------------------------------------------------------
-- ORDENANDO POR MAIS DE UMA COLUNA
-- A segunda coluna é um critério de desempate:
-- se houver valores iguais na primeira coluna,
-- a segunda coluna decide a ordem entre eles.
-- Exemplo: se existirem 5 funcionários com last_name 'King',
-- o first_name decide a ordem entre esses 5.
-- -------------------------------------------------------

SELECT first_name, last_name, email
FROM hr.employees
ORDER BY last_name, first_name;

-- Resultado esperado:
-- LAST_NAME   FIRST_NAME
-- ----------  ----------
-- King        Adam        ← entre os King, ordena pelo first_name
-- King        Daniel
-- King        John
-- King        Steven
-- King        William

-- -------------------------------------------------------
-- RESUMO
-- ORDER BY col1           → ordena por col1
-- ORDER BY col1, col2     → ordena por col1, em caso de empate
--                           usa col2 como critério de desempate
-- ORDER BY coluna ASC     → crescente (padrão)
-- ORDER BY coluna DESC    → decrescente
-- -------------------------------------------------------
