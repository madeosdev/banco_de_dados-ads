CREATE DATABASE LojaDB;
USE LojaDB;

CREATE TABLE categorias (
	id int primary key auto_increment,
    nome varchar(80),
    descricao text
);

CREATE TABLE produtos (
	id int primary key auto_increment,
    nome varchar(100),
    preco decimal(8,2),
    quantidade int not null,
    id_categoria int not null,
    foreign key (id_categoria) references categorias(id)
);

INSERT INTO categorias (nome, descricao) VALUES
('Alimentos perecíveis', 'Alimentos com prazo de validade.'),
('Produtos de limpeza', 'Produtos para limpar a casa.'),
('Produtos estrangeiros', 'Produtos vindos de fora do Brasil.')
;

INSERT INTO produtos (nome, preco, quantidade, id_categoria) VALUES
('Detergente', 8.99, 100, 2),
('File Mignon', 59.99, 50, 1),
('Queijo Minas', 19.99, 100, 1),
('Wasabi', 29.99, 100, 3),
('Alvejante', 14.99, 100, 2)
;

SELECT *
FROM produtos as p
INNER JOIN categorias as c
	ON c.id = p.id_categoria
;