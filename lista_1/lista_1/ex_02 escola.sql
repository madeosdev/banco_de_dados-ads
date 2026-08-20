CREATE DATABASE Escola;
USE Escola;

CREATE TABLE alunos (
	id int primary key auto_increment,
    nome varchar(150),
    idade int,
    cidade varchar(50),
    nota int
);

INSERT INTO alunos (nome, idade, cidade, nota) values
('Ana', 20, 'São Paulo', 85), 
('Bruno', 22, 'Rio de Janeiro', 70), 
('Carla', 19, 'São Paulo', 95),
 ('Daniel', 21, 'Belo Horizonte', 60), 
 ('Elisa', 23, 'Rio de Janeiro', 88),
 ('Fernando', 20, 'São Paulo', 75), 
 ('Gabriela', 22, 'Curitiba', 90),
 ('Henrique', 18, 'São Paulo', 65),
 ('Isabela', 24, 'Salvador', 92), 
 ('João', 21, 'Rio de Janeiro', 78),
 ('Karina', 19, 'Belo Horizonte', 82),
 ('Lucas', 23, 'Curitiba', 55),
 ('Marina', 20, 'Salvador', 97),
 ('Nicolas', 22, 'São Paulo', 73),
 ('Olivia', 18, 'Rio de Janeiro', 80),
 ('Pedro', 25, 'Belo Horizonte', 68),
 ('Quintino', 19, 'Curitiba', 91), 
 ('Rafaela', 24, 'São Paulo', 76),
 ('Sofia', 21, 'Salvador', 84),
 ('Thiago', 20, 'Rio de Janeiro', 89)
 ;

SELECT *
FROM alunos;

SELECT nome, idade
FROM alunos;

SELECT nome, nota
FROM alunos;

SELECT *
FROM alunos
WHERE nota >= 70;

SELECT *
FROM alunos
WHERE cidade = 'São Paulo';

SELECT *
FROM alunos
WHERE cidade = 'São Paulo' AND nota >= 70;

DROP TABLE alunos;
DROP DATABASE Escola;