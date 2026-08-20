CREATE DATABASE RH_Empresa;
USE Rh_Empresa;

CREATE TABLE funcionarios(
	id_funcionario int primary key auto_increment,
    nome VARCHAR(100),
    cargo VARCHAR(50)
);

INSERT INTO funcionarios(nome, cargo) values
('Matheos Moraes', 'Analista de Dados'),
('João Calvalca', 'Desenvolvedor Back-End'),
('João Pedro', 'Desenvolvedor Back-End'),
('Manuela Santos', 'Desenvolvedor Web'),
('Lucas Soares', 'Desenvolvedor Front-End')
;

SELECT *
FROM funcionarios;

DROP TABLE funcionarios;
DROP DATABASE Rh_Empresa;