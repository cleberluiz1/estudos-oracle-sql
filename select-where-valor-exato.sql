-- Exercício: SELECT com WHERE filtrando valor exato de texto
-- Objetivo: listar funcionários com o nome exato 'David'
-- Atenção: o Oracle é case-sensitive para valores de texto —
-- 'David' é diferente de 'david' ou 'DAVID'
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

SELECT first_name, last_name, email
FROM hr.employees
WHERE first_name = 'David';

-- -------------------------------------------------------
-- ATENÇÃO: CASE-SENSITIVE
-- O Oracle diferencia letras maiúsculas de minúsculas
-- nos valores de texto. Exemplos:
-- 'David' → encontra resultados
-- 'david' → não encontra nada
-- 'DAVID' → não encontra nada
-- -------------------------------------------------------

-- -------------------------------------------------------
-- SOLUÇÃO 1: UPPER — converte para MAIÚSCULO (caixa alta)
-- O valor de comparação DEVE estar em maiúsculo,
-- caso contrário a busca não retorna resultado
-- -------------------------------------------------------

-- Correto: valor em maiúsculo
SELECT first_name, last_name, email
FROM hr.employees
WHERE UPPER(first_name) = 'DAVID';

-- Errado: valor em minúsculo — não retorna nada
-- WHERE UPPER(first_name) = 'david';

-- -------------------------------------------------------
-- SOLUÇÃO 2: LOWER — converte para minúsculo (caixa baixa)
-- O valor de comparação DEVE estar em minúsculo,
-- caso contrário a busca não retorna resultado
-- -------------------------------------------------------

-- Correto: valor em minúsculo
SELECT first_name, last_name, email
FROM hr.employees
WHERE LOWER(first_name) = 'david';

-- Errado: valor em maiúsculo — não retorna nada
-- WHERE LOWER(first_name) = 'DAVID';

-- -------------------------------------------------------
-- RESUMO
-- WHERE coluna = 'David'        → busca exata (case-sensitive)
-- WHERE UPPER(coluna) = 'DAVID' → converte para maiúsculo/caixa alta
-- WHERE LOWER(coluna) = 'david' → converte para minúsculo/caixa baixa
-- -------------------------------------------------------
