--ATIVIDADE 5 - DDL

--A Optus � uma empresa no ramo musical que deseja realizar o gerenciamento dos lan�amentos de novos cds de seus artistas. Cada �lbum lan�ado poder� conter mais de um estilo vinculado (ex.: Indie e Folk).
--� importante que voc� crie tamb�m uma estrat�gia para que os usu�rios possuam acesso � plataforma.
--Os usu�rios devem conter nome, e-mail, senha e tipo de permiss�o (eles podem ser do tipo administrador ou comum).

--Observa��es:
--Os Artistas devem possuir somente o nome.
--Estilos: nome.
--�lbuns: t�tulo, data de lan�amento, localiza��o, quantidade de minutos, se o �lbum est� ativo para visualiza��o, a quem pertence (somente um artista por �lbum) e quais os estilos vinculados.

--DQL

--listar todos os usu�rios administradores, sem exibir suas senhas
--listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
--listar os dados de um usu�rio atrav�s do e-mail e senha
--listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 


CREATE DATABASE Exercicio_1_4;

USE Exercicio_1_4;

CREATE TABLE Usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(70) NOT NULL,
	Senha VARCHAR(8) NOT NULL,
	Permissao BIT NOT NULL,
)

CREATE TABLE Estilo 
(
	IdEstilo INT PRIMARY KEY IDENTITY,
	NomeEstilo VARCHAR(50) NOT NULL
)

CREATE TABLE Artista
(
	IdArtista INT PRIMARY KEY IDENTITY,
	NomeArtista VARCHAR(50) NOT NULL
)

CREATE TABLE Album 
(
	IdAlbum INT PRIMARY KEY IDENTITY,
	IdArtista INT FOREIGN KEY REFERENCES Artista(IdArtista) NOT NULL,
	TempoAlbum TIME NOT NULL,
	Titulo VARCHAR(30) NOT NULL,
	DataLancamento DATE NOT NULL,
	Localizacao VARCHAR (50) NOT NULL,
	Ativo BIT NOT NULL
)

CREATE TABLE AlbumUsuario
(
	IdAlbumUsuario INT PRIMARY KEY IDENTITY,
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum) NOT NULL,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL
)

CREATE TABLE AlbumEstilo
(
	IdAlbumEstilo INT PRIMARY KEY IDENTITY,
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum) NOT NULL,
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo) NOT NULL,
)