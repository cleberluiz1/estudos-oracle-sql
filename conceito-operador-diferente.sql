-- Conceito: Operador de diferente
-- Objetivo: filtrar registros excluindo um valor específico
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

-- -------------------------------------------------------
-- OPERADOR DIFERENTE
-- Dois operadores funcionam no Oracle: <> e !=
-- <> é o padrão SQL — recomendado no Oracle
-- != também funciona mas não é padrão SQL oficial
-- -------------------------------------------------------

-- Usando <> (recomendado no Oracle)
SELECT first_name, department_id
FROM hr.employees
WHERE department_id <> 50;

-- Usando != (também funciona)
SELECT first_name, department_id
FROM hr.employees
WHERE department_id != 50;

-- Os dois retornam o mesmo resultado:
-- todos os funcionários que NÃO são do departamento 50

-- -------------------------------------------------------
-- RESUMO
-- <>  → diferente — padrão SQL, recomendado no Oracle
-- !=  → diferente — funciona no Oracle mas não é padrão
-- -------------------------------------------------------
