CREATE DATABASE SuporteDB;
USE SuporteDB;

CREATE TABLE Chamados (
	id_chamado int primary key auto_increment,
    titulo VARCHAR(150),
    status_chamado VARCHAR (20)
);

INSERT INTO Chamados (titulo, status_chamado) values
('O computador parou de funcionar', 'aberto'),
('Erro de conexão da internet', 'fechado'),
('A impressora não funciona', 'aberto');

SELECT *
FROM Chamados;

DROP TABLE Chamados;
DROP DATABASE SuporteDB;