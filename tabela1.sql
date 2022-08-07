CREATE DATABASE loja;
USE loja;

CREATE TABLE cliente (
	nome VARCHAR (40),
	cpf VARCHAR (15) PRIMARY KEY,
	email VARCHAR (50),
	telefone VARCHAR (11),
	endereco VARCHAR (50),
	bairro VARCHAR (30),
	cidade VARCHAR (20),
	cep VARCHAR (9),
	uf VARCHAR (2),
	ddn DATE
);

CREATE TABLE fornecedor(
	cnpj VARCHAR (15) PRIMARY KEY,
	nome VARCHAR (40),
	email VARCHAR (50),
	telefone VARCHAR (11),
	endereco VARCHAR (50),
	bairro VARCHAR (30),
	cidade VARCHAR (20),
	cep VARCHAR (9),
	uf VARCHAR (2)
);

CREATE TABLE produtos(
	codprod VARCHAR (13) PRIMARY KEY,
	descricao VARCHAR (100),
	nome VARCHAR (30),
	estoque_min VARCHAR (500),
	estoque_max VARCHAR (2000),
	tamanho VARCHAR (30),
	unidade VARCHAR (2),
	estoque VARCHAR (2000)
);

CREATE TABLE compra(
	n_ordem VARCHAR (50) PRIMARY KEY,
	dia DATE,
	qntd VARCHAR (500),
	preco DECIMAL (5,2),
	nome VARCHAR (30),
	codprod VARCHAR (13),
	cnpj VARCHAR (15),
	FOREIGN KEY (codprod) REFERENCES produtos (codprod),
	FOREIGN KEY (cnpj) REFERENCES fornecedor (cnpj)
);