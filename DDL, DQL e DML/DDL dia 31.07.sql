--DDL - Data Definition Language
--Cria um banco de dados 
CREATE DATABASE Teste;

--Usa o banco de dados que estou trabalhando
USE Teste;

--Cria uma tabela
CREATE TABLE Funcionarios
(
	IdFuncionario INT PRIMARY KEY IDENTITY,  --IDENTITY É UM AUTO ENCREMENTO
	Nome VARCHAR(100)
)

CREATE TABLE Empresa
(
	IdEmpresa INT PRIMARY KEY IDENTITY,
	IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios(IdFuncionario),
	NomeEmpresa VARCHAR(100)
)

--Esse comando altera a tabela;
ALTER TABLE Funcionarios

--Exclui a tabela;
DROP COLUMN Nome;

--Exclui uma tabela;
DROP TABLE Funcionarios;

--Exclui um banco de dados
DROP DATABASE Teste;


--Se eu colocar o tipo de dado do SQL, por exemlo 'Password', uso [Password] para ignorar e eu utilizar o nome;