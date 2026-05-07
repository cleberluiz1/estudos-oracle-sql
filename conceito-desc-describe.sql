-- Conceito: DESC / DESCRIBE
-- Objetivo: exibir a estrutura de uma tabela
-- Schema: HR (Human Resources) - schema padrão de estudos Oracle
-- Curso: Técnico DBA Oracle - Target Trust

-- -------------------------------------------------------
-- DESC — exibe o nome, tipo de dado e nulidade de cada coluna
-- Muito usado pelo DBA para entender a estrutura de uma tabela
-- antes de escrever uma query
-- -------------------------------------------------------

DESC HR.EMPLOYEES;

-- Resultado esperado:
-- Nome              Nulo?    Tipo
-- ----------------- -------- ----------------------------
-- EMPLOYEE_ID       NOT NULL NUMBER(6)
-- FIRST_NAME                 VARCHAR2(20)
-- LAST_NAME         NOT NULL VARCHAR2(25)
-- EMAIL             NOT NULL VARCHAR2(25)
-- PHONE_NUMBER               VARCHAR2(20)
-- HIRE_DATE         NOT NULL DATE
-- JOB_ID            NOT NULL VARCHAR2(10)
-- SALARY                     NUMBER(8,2)
-- COMMISSION_PCT             NUMBER(2,2)
-- MANAGER_ID                 NUMBER(6)
-- DEPARTMENT_ID              NUMBER(4)

-- -------------------------------------------------------
-- INTERPRETANDO O RESULTADO
-- NOT NULL  → campo obrigatório, não aceita valor vazio
-- VARCHAR2  → texto de tamanho variável
-- NUMBER    → valor numérico (inteiro ou decimal)
-- DATE      → data e hora
-- NUMBER(8,2) → até 8 dígitos com 2 casas decimais
-- -------------------------------------------------------

-- -------------------------------------------------------
-- RESUMO
-- DESC nome_tabela → mostra estrutura completa da tabela
-- -------------------------------------------------------
