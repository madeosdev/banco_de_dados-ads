CREATE DATABASE lojavirtual;
USE lojavirtual;


CREATE TABLE clientes (
id INT primary key auto_increment,
nome VARCHAR(100),
email VARCHAR(150)
);

INSERT INTO clientes(nome, email)
VALUES('Matheos', 'matheosaugusto@gmail.com');

SELECT *
FROM clientes;

DROP TABLE clientes;

DROP DATABASE lojavirtual;