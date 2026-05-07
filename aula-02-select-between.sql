-- Exercício: SELECT com filtro BETWEEN
-- Objetivo: listar funcionários com salário entre 5000 e 8000
-- Observação: BETWEEN é inclusivo — inclui os valores 5000 e 8000
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

SELECT first_name, salary
FROM hr.employees
WHERE salary BETWEEN 5000 AND 8000;
