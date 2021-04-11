-- SQL Server 
USE MASTER;             -- Seleciona Banco Master
DROP DATABASE TESTE2;   -- Deleta Banco Teste2

USE MASTER;             -- Seleciona Banco Master
CREATE DATABASE TESTE2; -- Cria Banco Teste2  

USE TESTE2;             -- Seleciona Banco Teste 2

-- Cria Tabela Departamento
Create Table Departamento (
	idDepto int Primary Key,
	nome varchar(100) not null
);

-- Cria Tabela de Produto
Create Table Produto (
 id int NOT NULL,
 nome varchar(100) NOT NULL,
 precoUnitario decimal(6,2) Constraint ck_preco Check (precoUnitario > 0 And precoUnitario < 1001),
 idDepto int NOT NULL
 CONSTRAINT fk_Depto Foreign Key (idDepto) References Departamento (idDepto)
);

-- Criar a chave primaria
ALTER TABLE Produto ADD Constraint pk_Produto Primary Key (id); 

-- Criar a chave estrangeira
--ALTER TABLE Produto ADD Constraint fk_Depto Foreign Key (idDepto) References Departamento (idDepto);

-- Altera Tabela de Produto
ALTER TABLE Produto ADD qtdeEstoque int;    -- Alteração nova coluna qtdeEstoque

-- Nova Regra para qtdeEstoque >=0 e < 501
ALTER TABLE Produto ADD Constraint ck_qtdeEstoque Check (qtdeEstoque >= 0 And qtdeEstoque < 501)

-- Nova Coluna idDepto
--ALTER TABLE Produto ADD idDepto int;

-- Drop Coluna idDepto
--ALTER TABLE Produto Drop Column idDepto;

-- Alterando tamanho da coluna 
ALTER TABLE Produto Alter Column nome varchar(200);

-- Drop na Regra qtdeEstoque -> ck_qtdeEstoque
ALTER TABLE Produto Drop Constraint ck_qtdeEstoque;