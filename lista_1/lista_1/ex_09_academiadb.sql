CREATE DATABASE AcademiaDB;
USE AcademiaDB;

CREATE TABLE AlunosdaAcademia (
	id_aluno int primary key auto_increment,
    nome_aluno VARCHAR (100),
    plano VARCHAR(50)
);

INSERT INTO AlunosDaAcademia (nome_aluno, plano) values
('Ana da Silva', 'anual'),
('Marcos Costa', 'mensal'),
('Aline Gonçalves', 'anual'),
('Diego Andrade', 'mensal');

SELECT *
FROM AlunosDaAcademia;

SELECT *
FROM AlunosDaAcademia
WHERE plano = 'mensal';