CREATE DATABASE FatecDB;
USE FatecDB;

CREATE TABLE cursos (
	id int primary key auto_increment,
    nome varchar(100),
    descricao text,
    carga_horaria int not null
);

CREATE TABLE alunos(
	id int primary key auto_increment,
    nome varchar(100),
    email varchar(150),
    data_matricula datetime,
    id_curso int not null,
    foreign key (id_curso) references cursos (id)
);

INSERT INTO cursos (nome, descricao, carga_horaria) VALUES
('Análise & Desenvolvimento de Sistemas', 'TI', 2800),
('Design de Mídias Sociais', 'Design', 2500),
('Gestão de TI', 'Gestão', 2600)
;

INSERT INTO alunos (nome, email, data_matricula, id_curso) VALUES
('Matheos', 'matheos@g.com', '2026-01-01', 1),
('João Cavalca', 'cavalca@g.com', '2026-01-01', 1),
('Bruna', 'bruna@g.com', '2026-01-01', 2),
('João', 'joao@g.com', '2026-01-01', 3),
('Manuela', 'manu@g.com', '2026-01-01', 3)
;

SELECT *
FROM alunos AS a
INNER JOIN cursos AS c
	ON c.id = a.id_curso
;