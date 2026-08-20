CREATE DATABASE LojaVirtual;
USE LojaVirtual;

CREATE TABLE clientes (
	id int primary key auto_increment,
    nome VARCHAR(100),
	email VARCHAR(150)
);

INSERT INTO clientes (nome, email) values
('Matheos', 'matheos@moraes'),
('João', 'joao@cavalca'),
('Manuela', 'manu@santos')
;

SELECT *
FROM clientes;

DROP TABLE clientes;
DROP DATABASE LojaVirtual;