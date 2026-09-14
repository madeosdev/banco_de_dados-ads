CREATE DATABASE VendasDB;
USE VendasDB;

CREATE TABLE clientes (
	id int primary key auto_increment,
    nome varchar(100),
    email varchar(150)
);

CREATE TABLE pedidos (
	id int primary key auto_increment,
    numero_pedido varchar(20),
    data_pedido datetime,
    id_cliente int not null,
    foreign key (id_cliente) references clientes(id)
);

CREATE TABLE itens_pedido (
	id int primary key auto_increment,
    descricao_produto varchar(100),
    quantidade int not null,
    preco_unitario decimal (8, 2),
    id_pedido int not null,
    foreign key (id_pedido) references pedidos(id)
);

INSERT INTO clientes (nome, email) VALUES
('Carlos Eduardo Silva', 'carlos.silva@email.com'),
('Mariana Ferreira Santos', 'mariana.santos@email.com'),
('Roberto Avelar Mendes', 'roberto.mendes@email.com')
;

INSERT INTO pedidos (numero_pedido, data_pedido, id_cliente) VALUES
('PED-2024-001', '2024-03-01', 1),
('PED-2024-002', '2024-03-05', 1),
('PED-2024-003', '2024-03-10', 2),
('PED-2024-004', '2024-03-12', 3)
;

INSERT INTO itens_pedido (descricao_produto, quantidade, preco_unitario, id_pedido) VALUES
('Monitor LED 24 polegadas', 1, 750.00, 1),
('Teclado Mecânico RGB', 1, 250.00, 1),
('Mouse Sem Fio Ergonômico', 2, 90.00, 2),
('Fone de Ouvido Bluetooth', 1, 130.00, 3),
('Cadeira de Escritório Ergonômica', 1, 850.00, 4),
('Webcam Full HD', 1, 180.00, 4)
;

SELECT *
FROM pedidos AS p
INNER JOIN clientes AS c
	ON c.id = p.id_cliente
;

SELECT *
FROM itens_pedido AS i
INNER JOIN pedidos AS p
	ON p.id = i.id_pedido
INNER JOIN clientes AS c
	ON c.id = p.id_cliente
;