-- Conceito: Funções de agregação
-- Objetivo: juntar valores de várias linhas em um único resultado
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

-- -------------------------------------------------------
-- FUNÇÕES DE AGREGAÇÃO
-- Reduzem várias linhas em um único resultado
-- Exemplos: somas, médias, mínimo, máximo, contagem
-- -------------------------------------------------------

-- COUNT — conta o número de linhas
SELECT COUNT(*) AS total_funcionarios
FROM hr.employees;

-- SUM — soma os valores
SELECT SUM(salary) AS total_salarios
FROM hr.employees;

-- AVG — calcula a média
SELECT AVG(salary) AS media_salarial
FROM hr.employees;

-- MIN — retorna o menor valor
SELECT MIN(salary) AS menor_salario
FROM hr.employees;

-- MAX — retorna o maior valor
SELECT MAX(salary) AS maior_salario
FROM hr.employees;

-- -------------------------------------------------------
-- TODAS AS FUNÇÕES NUMA CONSULTA SÓ
-- -------------------------------------------------------

SELECT COUNT(*)        AS total_funcionarios,
       SUM(salary)     AS total_salarios,
       AVG(salary)     AS media_salarial,
       MIN(salary)     AS menor_salario,
       MAX(salary)     AS maior_salario
FROM hr.employees;

-- -------------------------------------------------------
-- PONTO CHAVE
-- A tabela hr.employees tem 107 funcionários mas
-- COUNT(*) devolve apenas uma linha com o número 107
-- Isso é agregação — várias linhas viram um único resultado
-- -------------------------------------------------------

-- -------------------------------------------------------
-- RESUMO
-- COUNT(*) → conta linhas
-- SUM      → soma valores
-- AVG      → média dos valores
-- MIN      → menor valor
-- MAX      → maior valor
-- -------------------------------------------------------
