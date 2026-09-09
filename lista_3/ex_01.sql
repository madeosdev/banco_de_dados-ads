CREATE DATABASE EmpresaDB;
USE EmpresaDB;

CREATE TABLE departamentos (
	id int primary key auto_increment,
    nome varchar(80),
    descricao text
);

CREATE TABLE funcionarios (
	id int primary key auto_increment,
    nome varchar(100),
    salario decimal(8,2),
    data_admissao datetime,
    id_departamento int not null,
    foreign key (id_departamento) references departamentos(id)
);

INSERT INTO departamentos (nome, descricao) VALUES
('TI', 'Departamento de Tecnologia da Informação'),
('RH', 'Departamento de Recursos Humanos'),
('Vendas', 'Departamento de Vendas')
;

INSERT INTO funcionarios (nome, salario, data_admissao, id_departamento) VALUES
('Matheos', 7500, '2026-07-22', 1),
('Manuela', 6000, '2026-06-04', 2),
('João Cavalca', 8000, '2025-03-02', 1),
('João', 8000, '2025-03-02', 1),
('Lucas Soares', 8000, '2025-03-02', 1),
('Bruna', 6000, '2026-04-06', 3)
;

SELECT *
FROM funcionarios AS f
INNER JOIN departamentos AS d
	ON d.id = f.id_departamento
;
