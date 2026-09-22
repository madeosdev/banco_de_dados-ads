CREATE DATABASE bdloja;
USE bdloja;

CREATE TABLE clientes (
	id_cliente int primary key auto_increment,
    nome varchar(50),
    cidade varchar (50)
);

CREATE TABLE pedidos (
	id_pedido int primary key auto_increment,
    produto varchar (80),
    status_pedido varchar(30),
    quantidade int not null,
    id_cliente int not null,
    foreign key (id_cliente) references clientes (id_cliente)
);

INSERT INTO clientes (nome, cidade) VALUES
("Ana Souza", "São Paulo"),
("Bruno Lima", "Rio de Janeiro"),
("Carla Mendes", "Curitiba"),
("Daniel Rocha", "Belo Horizonte"),
("Elisa Costa", "São Paulo")
;

INSERT INTO pedidos (produto, status_pedido, quantidade, id_cliente) VALUES
("Notebook", "Entregue", 1, 1),
("Smartphone", "Enviado", 2, 2),
("Mouse", "Entregue", 3, 1),
("Teclado", "Pendente", 1, 3),
("Monitor", "Enviado", 2, 4),
("Impressora", "Entregue", 1, 5)
;

SELECT c.nome, c.cidade, p.status_pedido
FROM clientes AS c
INNER JOIN pedidos AS p
	ON c.id_cliente = p.id_cliente
;

SELECT id_pedido, id_cliente, produto, status_pedido
FROM pedidos
WHERE status_pedido = "Entregue"
;

SELECT c.nome, p.produto, p.quantidade 
FROM clientes AS c
INNER JOIN pedidos AS p
	ON c.id_cliente = p.id_cliente
ORDER BY quantidade DESC
;
