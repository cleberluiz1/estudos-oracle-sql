-- Exercício: SELECT com filtro WHERE
-- Objetivo: listar funcionários com salário acima de 6000
-- Schema: HR (Human Resources) - schema padrão Oracle
-- Curso: Técnico DBA Oracle - Target Trust

SELECT first_name, salary
FROM hr.employees
WHERE salary > 6000;
