--ATIVIDADE AULA 6 - DML

--USA O BANCO 
USE Exercicio_1_1;

--INSERE DADOS NA TABELA
INSERT INTO Pessoa(Nome, CNH)
VALUES ('Lucas','00000000000')

INSERT INTO Email(IdPessoa,EmailUser)
VALUES(1,'Lucas@gmail.com')

INSERT INTO Telefone(IdPessoa,NumeroTelefone)
VALUES(1,'(11)4002-8922')

SELECT * FROM Pessoa;
SELECT * FROM Email;
SELECT * FROM Telefone;
