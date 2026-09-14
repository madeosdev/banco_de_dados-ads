CREATE DATABASE EmpresaDB;
USE EmpresaDB;

CREATE TABLE departamentos (
	id int primary key auto_increment,
    nome varchar(100)
);

CREATE TABLE funcionarios (
	id int primary key auto_increment,
    nome varchar(100),
    salario decimal (8, 2),
    id_departamento int not null,
    foreign key (id_departamento) references departamentos (id)
);

CREATE TABLE projetos (
	id int primary key auto_increment,
    nome varchar(100),
    data_inicio date,
    id_funcionario int not null,
    foreign key (id_funcionario) references funcionarios (id)
);

INSERT INTO departamentos (nome) VALUES
('Tecnologia da Informação'),
('Recursos Humanos')
;

INSERT INTO funcionarios (nome, salario, id_departamento) VALUES
('Ricardo Alves Mendes', 7500.00, 1),
('Fernanda Lima Santos', 6200.00, 1),
('Bruno Castro Carvalho', 5800.00, 1),
('Camila Duarte Silva', 4800.00, 2),
('Thiago Martins Oliveira', 5200.00, 2)
;

INSERT INTO projetos (nome, data_inicio, id_funcionario) VALUES
('Migração de Banco de Dados', '2024-01-15', 1),
('Implementação de API REST', '2024-02-01', 1),
('Reformulação do Portal Interno', '2024-02-10', 2),
('Atualização de Segurança', '2024-03-01', 3),
('Programa de Avaliação de Desempenho', '2024-01-20', 4),
('Automação de Admissão de Funcionários', '2024-03-05', 5)
;

SELECT *
FROM funcionarios AS f
INNER JOIN departamentos AS d
	ON d.id = f.id_departamento
;

SELECT *
FROM projetos AS p
INNER JOIN funcionarios AS f
	ON f.id = p.id_funcionario
INNER JOIN departamentos AS d
	ON d.id = f.id_departamento
;