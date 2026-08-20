CREATE DATABASE CinemaDB;
USE CinemaDB;

CREATE TABLE Filmes (
	id_filme int primary key auto_increment,
    nome_filme VARCHAR(150),
    ano_lancamento int
);

INSERT INTO Filmes (nome_filme, ano_lancamento) values
('Shin Kamen Rider', 2023),
('De Volta Pro Futuro', 1985),
('Shin Godzilla', 2016),
('OldBoy', 2003),
('Sussurros Do Coração', 1995)
;

SELECT *
FROM Filmes;

DROP TABLE Filmes;
DROP DATABASE CinemaDB;