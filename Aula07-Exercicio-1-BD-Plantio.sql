-- BASE DE DADOS PLANTIO
-- SCRIP SQL SERVER

-- Seleciona o banco master
USE MASTER;

-- Deleta Banco Plantio
DROP DATABASE Plantio;

-- Cria banco de dados
CREATE DATABASE Plantio;

-- Seleciona o banco Plantio
USE Plantio;

-- Cria tabela Funcionario
CREATE TABLE Funcionario (
 funcId int PRIMARY KEY,
 nome varchar(150) NOT NULL,
 idade int NOT NULL
);

-- Cria tabela Plantio
CREATE TABLE Plantio (
 plantioId int PRIMARY KEY,
 plantaId int NOT NULL,
 funcId int NOT NULL,
 canteiroId int NOT NULL,
 data date NOT NULL,
 sementes int NOT NULL
);

-- Cria tabela Planta
CREATE TABLE Planta (
 plantaId int PRIMARY KEY,
 nome varchar(100) NOT NULL,
 luzDiaria decimal(4,3),
 agua decimal(4,3),
 peso decimal(4,3)
);

-- Cria tabela Colhido
CREATE TABLE Colhido (
 colhidoId int PRIMARY KEY,
 plantaId int NOT NULL,
 funcId int NOT NULL,
 canteiroId int NOT NULL,
 data date,
 quantidade int NOT NULL,
 pesoa decimal(4,3)
);

CREATE TABLE Canteiro (
 canteiroId int PRIMARY KEY,
 nome varchar(100) NOT NULL,
 luzDiaria decimal(4,3),
 aguaDiaria decimal(4,3)
);

ALTER TABLE Plantio
 ADD CONSTRAINT FK_Plantio_Funcionario
 FOREIGN KEY (funcId) REFERENCES Funcionario (funcId);

ALTER TABLE Plantio
 ADD CONSTRAINT FK_Plantio_Planta
 FOREIGN KEY (plantaId) REFERENCES Planta (plantaId);

ALTER TABLE Plantio
 ADD CONSTRAINT FK_Plantio_Canteiro
 FOREIGN KEY (canteiroId) REFERENCES Canteiro (canteiroId);

ALTER TABLE Colhido
 ADD CONSTRAINT FK_Colhido_Funcionario
 FOREIGN KEY (funcId) REFERENCES Funcionario (funcId);

ALTER TABLE Colhido
 ADD CONSTRAINT FK_Colhido_Planta
 FOREIGN KEY (plantaId) REFERENCES Planta (plantaId);

ALTER TABLE Colhido
 ADD CONSTRAINT FK_Colhido_Canteiro
 FOREIGN KEY (canteiroId) REFERENCES Canteiro (canteiroId);