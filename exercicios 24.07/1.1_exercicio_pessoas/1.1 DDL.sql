--ATIVIDADE DA AULA 5 -DDL

--Construa a modelagem que represente pessoas e seus dados, observando que:
--uma pessoa pode ter vários telefones e vários emails, porém, pode possuir somente uma CNH.
--DQL
--listar as pessoas em ordem alfabética reversa, mostrando seus telefones, seus e-mails e suas CNHs

--PASSO 1 CRIAR UMA DATABASE (BASE DE DADOS)
CREATE DATABASE Exercicio_1_1;

--PASSO 2 COMANDO PARA USAR O BANCO DE DADOS
USE Exercicio_1_1

--PASSO 3 CRIAR AS TABELAS (começa sempre pela que não tem chave estrangeira)
CREATE TABLE Pessoa 
--DEFINIR AS COLUNAS DA TABELA
(
	IdPessoa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL, --fala para a pessoa que o campo nome não pode ser null, ou seja, ela tem que cadastrar uma pessoa;
	CNH VARCHAR(11) NOT NULL
)

CREATE TABLE Email
(
	IdEmail INT PRIMARY KEY IDENTITY,                   --O references fala para ele, que ele tem que criar referencia com uma tabela, nesse caso, com a tabela pessoa;
	IdPessoa INT FOREIGN KEY REFERENCES Pessoa(IdPessoa),
	EmailUser VARCHAR(50)
)

CREATE TABLE Telefone
(
	IdTelefone INT PRIMARY KEY IDENTITY,                   --O references fala para ele, que ele tem que criar referencia com uma tabela, nesse caso, com a tabela pessoa;
	IdPessoa INT FOREIGN KEY REFERENCES Pessoa(IdPessoa),
	NumeroTelefone VARCHAR(30)
)