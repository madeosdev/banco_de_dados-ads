CREATE DATABASE CursosOnline;
USE CursosOnline;

CREATE TABLE Cursos (
	id_curso int primary key auto_increment,
    nome_curso VARCHAR(120),
    carga_horaria int
);

INSERT INTO Cursos (nome_curso, carga_horaria) values
('Análise & Desenvolvimento de Sistemas', 2800),
('Gestão de TI', 2400),
('Design de Mídias Digitais', 2800)
;

SELECT *
FROM Cursos;

SELECT *
FROM Cursos
WHERE carga_horaria >= 2500;

DROP TABLE Cursos;
DROP DATABASE CursosOnline;