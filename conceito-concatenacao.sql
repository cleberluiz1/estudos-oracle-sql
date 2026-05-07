-- Conceito: Concatenação com operador ||
-- Objetivo: juntar dois ou mais valores em um único resultado
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

-- -------------------------------------------------------
-- CONCATENAÇÃO — juntar valores lado a lado na saída
-- Operador: || (duas barras verticais)
-- -------------------------------------------------------

-- Sem concatenação — duas colunas separadas
SELECT first_name, last_name
FROM hr.employees;

-- Com concatenação — uma coluna só
SELECT first_name || ' ' || last_name AS nome_completo
FROM hr.employees;

-- Resultado esperado:
-- NOME_COMPLETO
-- -------------
-- Steven King
-- Neena Kochhar

-- -------------------------------------------------------
-- DICA: o ' ' entre os || adiciona um espaço entre
-- os valores — sem ele os nomes ficam colados: StevenKing
-- -------------------------------------------------------

-- Concatenando texto fixo com valor da coluna
SELECT first_name || ' ganha R$ ' || salary AS informacao
FROM hr.employees;

-- Resultado esperado:
-- INFORMACAO
-- ----------------------
-- Steven ganha R$ 24000

-- -------------------------------------------------------
-- RESUMO
-- valor1 || valor2         → junta sem espaço
-- valor1 || ' ' || valor2  → junta com espaço
-- valor1 || ' texto ' || valor2 → junta com texto fixo
-- -------------------------------------------------------
