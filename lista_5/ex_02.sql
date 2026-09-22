CREATE DATABASE bd_escola;
USE bd_escola;

CREATE TABLE alunos (
	id_aluno int primary key auto_increment,
    nome varchar(80),
    cidade varchar(50)
);

CREATE TABLE cursos (
	id_curso int primary key auto_increment,
    nome_curso varchar(80),
    turno varchar(20),
    carga_horaria int not null,
    id_aluno int not null,
    foreign key (id_aluno) references alunos (id_aluno)
);

INSERT INTO alunos (nome, cidade) VALUES
("João Silva", "São Paulo"),
("Maria Oliveira", "Campinas"),
("Pedro Santos", "Santos"),
("Larissa Alves", "São Paulo"),
("Rafael Costa", "Jundiaí")
;

INSERT INTO cursos (nome_curso, turno, carga_horaria, id_aluno) VALUES
("Informática", "Manhã", 120, 1),
("Administração", "Noite", 180, 2),
("Redes de Computadores", "Tarde", 200, 3),
("Banco de Dados", "Noite", 160, 4),
("Informática", "Manhã", 120, 5),
("Programação Web", "Noite", 240, 1)
;

SELECT nome, nome_curso, turno
FROM alunos AS a
INNER JOIN cursos AS c
	ON a.id_aluno = c.id_aluno
;

SELECT a.nome, a.cidade, c.nome_curso, c.carga_horaria
FROM alunos AS a
INNER JOIN cursos AS c
	ON a.id_aluno = c.id_aluno
WHERE a.cidade = "São Paulo" && c.carga_horaria >= 150
;
