--
-- Definição da tabela UF
--

If Exists (Select name From sysobjects where name= 'UF')
	Drop table dbo.UF


CREATE TABLE UF (
  IdUF   CHAR(2)      NOT NULL primary key,
  NomeUF VARCHAR (15) NOT NULL)

-- Carga de dados da tabela UF

INSERT INTO UF VALUES ('AL', 'ALAGOAS')
INSERT INTO UF VALUES ('SP', 'SAO PAULO')
INSERT INTO UF VALUES ('RJ', 'RIO DE JANEIRO')
INSERT INTO UF VALUES ('PR', 'PARANA')
INSERT INTO UF VALUES ('MG', 'MINAS GERAIS')
INSERT INTO UF VALUES ('BA', 'BAHIA')
INSERT INTO UF VALUES ('PE', 'PERNAMBUCO')



--
-- Definição da tabela Cidade
--

If Exists (Select name From sysobjects where name= 'Cidade')
	Drop table dbo.Cidade

CREATE TABLE Cidade (
  IdCidade   int     NOT NULL PRIMARY KEY,
  IdUF      CHAR(2) CONSTRAINT FK_UF REFERENCES UF(IdUF),
  NomeCidade VARCHAR (30) NOT NULL)

-- Carga de dados da tabela UF

INSERT INTO Cidade VALUES (134, 'SP', 'SAO PAULO')
INSERT INTO Cidade VALUES (245, 'RJ', 'RIO DE JANEIRO')
INSERT INTO Cidade VALUES (103, 'PR', 'CURITIBA')
INSERT INTO Cidade VALUES (356, 'AL', 'MACEIO')
INSERT INTO Cidade VALUES (856, 'SP', 'SOROCABA')
INSERT INTO Cidade VALUES (912, 'RJ', 'NITEROI')
INSERT INTO Cidade VALUES (479, 'PR', 'LONDRINA')                
INSERT INTO Cidade VALUES (588, 'SP', 'CAMPINAS')
INSERT INTO Cidade VALUES (412, 'PE', 'RECIFE')
INSERT INTO Cidade VALUES (423, 'MG', 'BELO HORIZONTE')
INSERT INTO Cidade VALUES (458, 'BA', 'SALVADOR')
INSERT INTO Cidade VALUES (471, 'MG', 'OURO PRETO')


--
-- Definição da tabela Pessoa
--

If Exists (Select name From sysobjects where name= 'Pessoa')
	Drop table dbo.Pessoa

CREATE TABLE Pessoa (
  IdPessoa			int NOT NULL PRIMARY KEY,
  NomePessoa		VARCHAR (30) NOT NULL,
  CidadeReside		int CONSTRAINT FK_CIDADE REFERENCES CIDADE (IdCidade),
  Nascimeto			Datetime)

-- Carga de dados da tabela Pessoa

INSERT INTO PESSOA VALUES (0001, 'JOSE DA SILVA', 134,  '19730510')
INSERT INTO PESSOA VALUES (0002, 'JOAO OLIVEIRA', 856,  '19730521')
INSERT INTO PESSOA VALUES (0003, 'MARIA DA SILVA', 134, '19770518')
INSERT INTO PESSOA VALUES (0004, 'MARIA OLIVEIRA', 912, '19830910')
INSERT INTO PESSOA VALUES (0005, 'JOSE OLIVERIA DA SILVA', 588, '19780420')
INSERT INTO PESSOA VALUES (0006, 'JOAO OLIVEIRA DA SILVA', 134, '19850517')
INSERT INTO PESSOA VALUES (0007, 'JOSE MARIA DA SILVA', 245, '19730114')
INSERT INTO PESSOA VALUES (0008, 'MARIA JOSE DA SILVA', 245, '19730715')
INSERT INTO PESSOA VALUES (0009, 'JOSEFA DA SILVA', 103, '19740512')
INSERT INTO PESSOA VALUES (0010, 'JOSEFA OLIVEIRA', 103, '19790916')
INSERT INTO PESSOA VALUES (0011, 'JOAO JOSE DA SILVA', 356, '19820611')


--
-- Definição da tabela Fabricante
--

If Exists (Select name From sysobjects where name= 'Fabricante')
	Drop table dbo.Fabricante

CREATE TABLE Fabricante (
   IdFabricante   int PRIMARY KEY,
   NomeFabricante CHAR(7));

-- Carga de Dados da tabela Fabricante

INSERT INTO FABRICANTE VALUES (1,'VW');
INSERT INTO FABRICANTE VALUES (2,'FIAT');
INSERT INTO FABRICANTE VALUES (3,'GM');
INSERT INTO FABRICANTE VALUES (4,'FORD');


--
-- Definição da tabela Veiculo
--

If Exists (Select name From sysobjects where name= 'Veiculo')
	Drop table dbo.Veiculo

-- Carga de Dados da Tabela Veiculo

CREATE TABLE Veiculo (
  Placa CHAR(7) NOT NULL PRIMARY KEY,
  Cidade int CONSTRAINT FK_CIDADE_VEICULO REFERENCES CIDADE(IdCidade),
  Marca int CONSTRAINT FK_MARCA REFERENCES FABRICANTE (IdFabricante),
  Ano int,
  Cor CHAR (10),
  IdPessoa int CONSTRAINT FK_PESSOA REFERENCES PESSOA(IdPessoa));

insert into veiculo values ('AAB4132', 134, 1, 2005, 'AZUL', 0001);
insert into veiculo values ('AAB9252', 134, 3, 2006, 'VERDE', 0001);
insert into veiculo values ('ACX4981', 134, 2, 1997, 'PRETO', 0003);
insert into veiculo values ('BAB7852', 134, 1, 2002, 'VERDE', 0003);
insert into veiculo values ('BAQ7351', 245, 2, 2003, 'VERDE', 0007);
insert into veiculo values ('BAQ5418', 245, 1, 2006, 'BRANCO', 0007);
insert into veiculo values ('BAQ2350', 245, 4, 2005, 'PRATA', 0007);
insert into veiculo values ('BAQ2178', 245, 3, 2004, 'PRATA', 0008);
insert into veiculo values ('DDY2198', 103, 3, 2003, 'PRETO', 0010);
insert into veiculo values ('DDY3218', 103, 1, 2004, 'PRATA', 0010);
insert into veiculo values ('DDY5716', 103, 4, 2004, 'AZUL', 0009);
insert into veiculo values ('DDY3321', 103, 1, 2005, 'VERMELHO', 0009);
insert into veiculo values ('DDY2156', 103, 2, 2004, 'VINHO', 0010);
insert into veiculo values ('AZK5556', 356, 2, 2003, 'PRETO', 0011);
insert into veiculo values ('AZK1267', 356, 2, 2000, 'PRATA', 0011);
insert into veiculo values ('AZK3455', 356, 1, 2004, 'VINHO', 0005);
insert into veiculo values ('AZK5236', 356, 3, 2003, 'VERDE', 0005);
insert into veiculo values ('AZK5676', 356, 2, 2001, 'AZUL', 0004);
