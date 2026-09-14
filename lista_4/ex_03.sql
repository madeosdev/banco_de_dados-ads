CREATE DATABASE EscolaDB;
USE EscolaDB;

CREATE TABLE turmas (
	id int primary key auto_increment,
    nome varchar(20),
    serie int not null
);

CREATE TABLE alunos (
	id int primary key auto_increment,
    nome varchar(100),
    data_nascimento datetime,
    id_turma int not null,
    foreign key (id_turma) references turmas (id)
);

CREATE TABLE notas (
	id int primary key auto_increment,
    disciplina varchar(50),
    nota decimal (8,3),
    id_aluno int not null,
    foreign key (id_aluno) references alunos(id)
);

INSERT INTO turmas (nome, serie) VALUES
('Turma 9A', 9),
('Turma 1B', 1)
;

INSERT INTO alunos (nome, data_nascimento, id_turma) VALUES
('Lucas Gabriel Lima', '2009-04-12', 1),
('Beatrys Rocha', '2009-08-25', 1),
('Gabriel Souza', '2009-01-15', 1),
('Sophia Martins', '2010-11-03', 2),
('Enzo Carvalho', '2010-06-19', 2)
;

INSERT INTO notas (disciplina, nota, id_aluno) VALUES
('Matemática', 8.50, 1),
('Português', 9.00, 1),
('Matemática', 7.00, 2),
('História', 8.00, 2),
('Ciência', 6.50, 3),
('Matemática', 9.50, 3),
('Português', 8.00, 4),
('Geográfia', 7.20, 5)
;

SELECT *
FROM notas AS n
INNER JOIN alunos AS a
	ON a.id = n.id_aluno
;

SELECT *
FROM notas AS n
INNER JOIN alunos AS a
	ON a.id = n.id_aluno
INNER JOIN turmas AS t
	ON t.id = a.id_turma
;