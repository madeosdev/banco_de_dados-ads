CREATE DATABASE ClientesDB;
USE ClientesDB;

CREATE TABLE clientes (
	id int primary key auto_increment,
    nome varchar(80),
    email varchar(150),
    telefone varchar(20)
);

CREATE TABLE pedidos (
	id int primary key auto_increment,
    numero_pedido varchar(20),
    valor_total decimal(8,2),
    data_pedido datetime,
    id_cliente int not null,
    foreign key (id_cliente) references clientes(id)
);

INSERT INTO clientes (nome, email, telefone) VALUES
('Juca Souza', 'jucasouza@g.com', '1291234'),
('Amanda Silva','amandasilva@outlook.com', '8494321'),
('Samuel Camargo', 'samucamargo@g.com', '27998765')
;

INSERT INTO pedidos (numero_pedido, valor_total, data_pedido, id_cliente) VALUES
('10000001', 7435.56, '2026-09-07', 1),
('10000002', 567.89, '2026-09-05', 1),
('10000003', 1003.45, '2026-08-27', 2),
('10000004', 678.99, '2026-09-01', 2),
('10000005', 4567.89, '2026-08-25', 3)
;

SELECT *
FROM pedidos AS p
INNER JOIN clientes AS c
	ON c.id = p.id_cliente
;