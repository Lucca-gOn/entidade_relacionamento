--DML - Data Manipulation Language

--USA O BANCO 
USE Teste;
--INSERE DADOS A TABELA FUNCIONARIOS
INSERT INTO Funcionarios(Nome)
VALUES ('Carlos')

--ALTERA DADOS NA TABELA 
--Ele esta indo em nome, definindo 'Marcio' como o novo nome, trocando o id 3 pelo nome 'Marcio'
UPDATE Funcionarios
SET Nome = 'Marcio' WHERE IdFuncionario = 3

--Excluir dados da tabela 
DELETE FROM Funcionarios
WHERE Nome = 'Marcio'
