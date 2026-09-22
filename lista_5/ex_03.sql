CREATE DATABASE bd_empresa;
USE bd_empresa;

CREATE TABLE departamentos (
	id_departamento int primary key auto_increment,
    nome_departamento varchar(60),
    localizacao varchar(60)
);

CREATE TABLE funcionarios (
	id_funcionario int primary key auto_increment,
    nome_funcionario varchar(80),
    cargo varchar(50),
    salario int not null,
    id_departamento int not null,
    foreign key (id_departamento) references departamentos (id_departamento)
);

INSERT INTO departamentos (nome_departamento, localizacao) VALUES
("Tecnologia", "São Paulo"),
("Recursos Humanos", "Rio de Janeiro"),
("Financeiro", "Belo Horizonte"),
("Comercial", "Curitiba")
;

INSERT INTO funcionarios (nome_funcionario, cargo, salario, id_departamento) VALUES 
("Carlos Mendes", "Analista", 5500, 1),
("Fernanda Lima", "Desenvolvedora", 7200, 1),
("Roberto Alves", "Assistente", 3200, 2),
("Juliana Costa", "Analista", 6100, 3),
("Marcos Costa", "Vendedor", 4800, 4),
("Patrícia Rocha", "Gerente", 8500, 2)
;

SELECT nome_funcionario, cargo, nome_departamento
FROM funcionarios AS f
INNER JOIN departamentos AS d
	ON f.id_departamento = d.id_departamento
;

SELECT nome_funcionario, nome_departamento, salario
FROM funcionarios AS f
INNER JOIN departamentos AS d
	ON f.id_departamento = d.id_departamento
WHERE nome_departamento = "Tecnologia" && salario > 6000
;

SELECT nome_funcionario, nome_departamento, salario
FROM funcionarios AS f
INNER JOIN departamentos AS d
	ON f.id_departamento = d.id_departamento
ORDER BY salario DESC
;