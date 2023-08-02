--ATIVIDADE 5 - DDL

--Uma cl�nica veterin�ria deseja cadastrar os animais de estima��o que s�o atendidos em seu local.
-- a cl�nica cont�m um endere�o;
-- os animais de estima��o devem ter nome, data de nascimento, tipo de animal de estima��o;
-- os animais de estima��o devem ter ra�a;
-- os animais de estima��o devem ter donos;
-- a cl�nica deseja cadastrar seus veterin�rios e todo atendimento de pet ser� feito por um veterin�rio;
--DML
-- cada atendimento deve registrar qual veterin�rio atendeu, qual pet foi atendido, descri��o da consulta e data da consulta
--DQL
-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)
-- listar todas as ra�as que come�am com a letra S
-- listar todos os tipos de animais de estima��o que terminam com a letra O
-- listar todos os pets mostrando os nomes dos seus donos
-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, a ra�a e o tipo do animal de estima��o que foi atendido, o nome do dono do animal de estima��o e o nome da cl�nica onde o animal de estima��o foi atendido

CREATE DATABASE Exercicio_1_3;

USE Exercicio_1_3;

CREATE TABLE Endereco 
(
	IdEndereco INT PRIMARY KEY IDENTITY,
	Rua VARCHAR (30) NOT NULL,
	Bairro VARCHAR (30) NOT NULL,
	CEP VARCHAR (11) NOT NULL
)

CREATE TABLE Raca
(
	IdRaca INT PRIMARY KEY IDENTITY, 
	NomeRaca VARCHAR (20) NOT NULL
)

CREATE TABLE TipoPet
(
	IdTipoPet INT PRIMARY KEY IDENTITY, 
	NomeTipoPet VARCHAR (20) NOT NULL
)

CREATE TABLE Dono 
(
	IdDono INT PRIMARY KEY IDENTITY,
	NomeDono VARCHAR (50) NOT NULL
)

CREATE TABLE Clinica
(
	IdClinica INT PRIMARY KEY IDENTITY,
	IdEndereco INT FOREIGN KEY REFERENCES Endereco(IdEndereco) NOT NULL
)

CREATE TABLE Veterinario
(
	IdVeterinario INT PRIMARY KEY IDENTITY, 
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica), 
	NomeVeterinario VARCHAR(50)
)

CREATE TABLE Pet
(
	IdPet INT PRIMARY KEY IDENTITY,
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca) NOT NULL,
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet) NOT NULL,
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono) NOT NULL,
	Nome VARCHAR (50) NOT NULL,
	Nascimento DATE NOT NULL
)

CREATE TABLE Atendimento
(
	IdAtendimento INT PRIMARY KEY IDENTITY,
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario) NOT NULL,
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet) NOT NULL,
	DescricaoConsulta VARCHAR (1500),
	DataConsulta DATE
)

--DROP TABLE Veterinario

