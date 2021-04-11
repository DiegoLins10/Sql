-- banco de dados master
USE MASTER;

--CRIANDO DATA BASE 
CREATE DATABASE BIBLIOTECA;

-- USANDO BD BIBLIOTECA
USE BIBLIOTECA;

--CRIANDO TABELA EDITORA
CREATE TABLE Editora(
	idEditora Int PRIMARY KEY,
	NomeFantasia VARCHAR(255) NOT NULL,
	RazaoSocial VARCHAR(255) NOT NULL,
	Endereco VARCHAR(255) NOT NULL,
	Telefone VARCHAR(15) NOT NULL
);

--CRIANDO TABELA CLIENTE
CREATE TABLE Cliente(
	idCliente int PRIMARY KEY,
	NomeCliente VARCHAR(255) NOT NULL,
	RgCliente char(15) NOT NULL,
	CPFCliente BIGINT NOT NULL,
	EndrecoCliente VARCHAR(255) NOT NULL
);
--CRIANDO TABELA LIVRO
CREATE TABLE Livro(
	idLivro int PRIMARY KEY,
	Editora_idEditora int NOT NULL,
	ISBN BIGINT NOT NULL,
	Titulo VARCHAR(255) NOT NULL,
	Preco NUMERIC(10,2) NOT NULL,
	Categoria VARCHAR(255) NOT NULL
);
--CRIANDO TABELA PEDIDOS
CREATE TABLE Pedido(
	IdPedido int PRIMARY KEY,
	Livro_idLivro int NOT NULL,
	QtdePedido int NOT NULL
);
--CRIANDO TABELA VENDA
CREATE TABLE VENDA(
	idVenda int PRIMARY KEY NOT NULL,
	Cliente_idCliente int NOT NULL,
	Pedido_idPedido int NOT NULL,
	DataVenda DATE NOT NULL,
	DescontoVenda int NOT NULL,
	ValorBrutoVenda numeric(10,2) NOT NULL
);

-- Criando as Chaves Estrangeiras (FKs)
--FK DO LIVRO
ALTER TABLE Livro ADD CONSTRAINT fk_Livro_Editora -- Livro fazendo referencia a tabela editora
	Foreign key (Editora_idEditora) references Editora(idEditora);

-- FK DO PEDIDO
ALTER TABLE Pedido ADD CONSTRAINT fk_Pedido_Livro -- Pedido fazendo referencia a tabela livro
	Foreign key(Livro_idLivro) references Livro(idLivro);

-- FK DA VENDA
ALTER TABLE Venda ADD CONSTRAINT fk_Venda_Cliente -- Venda faz referencia a cliente
	Foreign Key(Cliente_idCliente) references Cliente(idCliente);

ALTER TABLE Venda ADD CONSTRAINT fk_Venda_Pedido -- Venda faz referencia a pedido
	Foreign Key(Pedido_idPedido) references Pedido(idPedido);


