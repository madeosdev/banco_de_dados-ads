CREATE DATABASE Fatec2DB;
USE Fatec2DB;

CREATE TABLE professores (
	id int primary key auto_increment,
    nome varchar(100),
    email varchar (150),
    data_contratacao datetime
);

CREATE TABLE disciplinas (
	id int primary key auto_increment,
    nome varchar(100),
    carga_horaria int not null,
    semestre int not null,
    id_professor int not null,
    foreign key (id_professor) references professores (id)
);

INSERT INTO professores (nome, email, data_contratacao) VALUES
('Carlos Eduardo Silva', 'carlos.silva@universidade.edu.br', '2018-02-15'),
('Ana Beatriz Santos', 'ana.santos@universidade.edu.br', '2020-08-01'),
('Roberto Lima', 'roberto.lima@universidade.edu.br', '2015-03-10')
;

INSERT INTO disciplinas (nome, carga_horaria, semestre, id_professor) VALUES
('Banco de Dados Relacionais', 80, 3, 1),
('Engenharia de Software', 60, 4, 1),
('Estrutura de Dados', 80, 2, 2),
('Programação Orientada a Objetos', 60, 2, 2),
('Algoritmos e Lógica de Programação', 40, 1, 3)
;

SELECT *
FROM disciplinas AS d
INNER JOIN professores AS p
	ON p.id = d.id_professor
;