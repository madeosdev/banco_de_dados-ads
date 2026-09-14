CREATE DATABASE LojaDB;
USE LojaDB;

CREATE TABLE categorias (
	id int primary key auto_increment,
    nome varchar(100),
    descricao text
);

CREATE TABLE produtos (
	id int primary key auto_increment,
    nome varchar(100),
    preco decimal (8, 2),
    id_categoria int not null,
    foreign key (id_categoria) references categorias(id)
);

CREATE TABLE carrinho (
	id int primary key auto_increment,
    quantidade int not null,
    data_adicao date,
    id_produto int not null,
    foreign key (id_produto) references produtos (id)
);

INSERT INTO categorias (nome, descricao) VALUES
('Eletrônicos', 'Dispositivos para tecnologia, áudio, vídeo e informática.'),
('Casa e Decoração', 'Produtos para organização, utilidades domésticas e conforto da casa.')
;

INSERT INTO produtos (nome, preco, id_categoria) VALUES
('Smartphone Galaxy S', 2999.90, 1),
('Headset Gamer Surround', 350.00, 1),
('Smart TV 55 polegadas', 2499.00, 1),
('Jogo de Panelas Antiaderentes', 299.90, 2),
('Luminária de Mesa LED', 79.90, 2)
;

INSERT INTO carrinho (quantidade, data_adicao, id_produto) VALUES
(1, '2024-04-01', 1),
(2, '2024-04-01', 2),
(1, '2024-04-02', 4),
(3, '2024-04-02', 5),
(1, '2024-04-03', 3),
(2, '2024-04-03', 2)
;

SELECT *
FROM produtos AS p
INNER JOIN categorias AS cat
	ON cat.id = p.id_categoria
;

SELECT *
FROM carrinho AS car
INNER JOIN produtos AS p
	ON p.id = car.id_produto
INNER JOIN categorias AS cat
	ON cat.id = p.id_categoria
;