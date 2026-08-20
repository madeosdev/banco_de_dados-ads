CREATE DATABASE EventosDB;
USE EventosDB;

CREATE TABLE Eventos (
	id_evento int primary key auto_increment,
    nome_evento VARCHAR (120),
    cidade VARCHAR (80)
);

INSERT INTO Eventos (nome_evento, cidade) values
('Anime Guará', 'Guaratinguetá'),
('Anime Friends', 'São Paulo'),
('Gamescom LATAM', 'São Paulo');

SELECT *
FROM Eventos;

SELECT *
FROM Eventos
WHERE cidade = 'São Paulo';

DROP TABLE Eventos;
DROP DATABASE EventosDB;