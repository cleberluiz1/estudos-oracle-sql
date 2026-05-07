-- Exercício: SELECT com JOIN implícito, SUM, GROUP BY e ORDER BY
-- Objetivo: listar o total de salários por cargo, do maior para o menor
-- Tabelas: HR.EMPLOYEES (e) e HR.JOBS (j)
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

SELECT SUM(e.salary)  AS total_salarios,
       j.job_title    AS cargos
FROM hr.employees e,
     hr.jobs j
WHERE e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY SUM(e.salary) DESC;

-- -------------------------------------------------------
-- ENTENDENDO CADA PARTE DA QUERY
-- -------------------------------------------------------

-- 1. ALIAS DE TABELA
-- hr.employees e → apelido 'e' para a tabela employees
-- hr.jobs j      → apelido 'j' para a tabela jobs
-- Usado para abreviar e evitar ambiguidade entre colunas

-- 2. JOIN IMPLÍCITO
-- A ligação entre as tabelas é feita no WHERE:
-- WHERE e.job_id = j.job_id
-- Conecta cada funcionário ao seu cargo correspondente

-- 3. SUM + GROUP BY
-- GROUP BY j.job_title agrupa os funcionários por cargo
-- SUM(e.salary) soma os salários dentro de cada grupo
-- Resultado: um total de salários por cargo

-- 4. ORDER BY DESC
-- Ordena o resultado do maior total para o menor
-- DESC = decrescente (maior ao menor)

-- -------------------------------------------------------
-- ATENÇÃO: regra do GROUP BY
-- Toda coluna no SELECT que não for função de agregação
-- (SUM, COUNT, AVG, MIN, MAX) DEVE aparecer no GROUP BY
-- Correto:   SELECT job_title ... GROUP BY job_title
-- Incorreto: SELECT job_title ... (sem GROUP BY) → erro!
-- -------------------------------------------------------

-- -------------------------------------------------------
-- RESUMO
-- alias e, j        → apelidos para abreviar as tabelas
-- JOIN implícito    → ligação feita no WHERE
-- GROUP BY          → agrupa linhas por valor da coluna
-- SUM + GROUP BY    → soma por grupo
-- ORDER BY DESC     → ordena do maior para o menor
-- -------------------------------------------------------
