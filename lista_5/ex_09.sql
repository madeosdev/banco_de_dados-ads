CREATE DATABASE bd_logistica;
USE bd_logistica;

CREATE TABLE transportadoras (
	id_transportadora int primary key auto_increment,
    nome varchar(80),
    cidade varchar(50)
);

CREATE TABLE entregas (
	id_entrega int primary key auto_increment,
    id_transportadora int not null,
    foreign key (id_transportadora) references transportadoras (id_transportadora),
    destino varchar(50),
    produto varchar(80),
    status_entrega varchar (30),
    quantidade int not null
);

INSERT INTO transportadoras (nome, cidade) VALUES
("Rápido Sul", "Curitiba"),
("Entrega Brasil", "São Paulo"),
("Carga Express", "Rio de Janeiro"),
("Logística Minas", "Belo Horizonte")
;

INSERT INTO entregas (id_transportadora, destino, produto, status_entrega, quantidade) VALUES
(1, "Porto Alegre", "Computadores", "Entregue", 10),
(2, "Campinas", "Celulares", "Em trânsito", 25),
(3, "Niterói", "Monitores", "Entregue", 8),
(4, "Contagem", "Impressoras", "Pendente", 12),
(2, "Santos", "Teclados", "Entregue", 30),
(1, "Londrina", "Tablets", "Em trânsito", 15)
;

SELECT nome, produto, destino, status_entrega
FROM transportadoras AS t
INNER JOIN entregas AS e
	ON e.id_transportadora = t.id_transportadora
;

SELECT nome, cidade, produto, status_entrega
FROM transportadoras AS t
INNER JOIN entregas AS e
	ON e.id_transportadora = t.id_transportadora
WHERE status_entrega = "Entregue" && cidade = "São Paulo" || status_entrega = "Entregue" && cidade = "Curitiba"
;

SELECT nome, produto, quantidade
FROM transportadoras AS t
INNER JOIN entregas AS e
	ON e.id_transportadora = t.id_transportadora
ORDER BY quantidade DESC
;