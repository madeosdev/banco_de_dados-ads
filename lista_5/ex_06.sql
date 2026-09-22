CREATE DATABASE bd_produtos;
USE bd_produtos;

CREATE TABLE categorias (
	id_categoria int primary key auto_increment,
    nome_categoria varchar(60),
    setor varchar(50)
);

CREATE TABLE produtos (
	id_produto int primary key auto_increment,
    nome_produto varchar(80),
    marca varchar(50),
    preco int not null,
    id_categoria int not null,
    foreign key (id_categoria) references categorias (id_categoria)
);

INSERT INTO categorias (nome_categoria, setor) VALUES
("Informática", "Eletrônicos"),
("Celulares", "Eletrônicos"),
("Escritório", "Papelaria"),
("Móveis", "Casa")
;

INSERT INTO produtos (nome_produto, marca, preco, id_categoria) VALUES
("Notebook", "TechPlus", 4500, 1),
("Monitor", "ViewPro", 1800, 1),
("Smartphone", "MobileX", 3200, 2),
("Impressora", "PrintMax", 1200, 3),
("Teclado", "KeyTech", 450, 3),
("Mesa de Escritório", "OfficeLar", 900, 4)
;

SELECT nome_produto, marca, nome_categoria
FROM produtos AS p
INNER JOIN categorias AS c
	ON p.id_categoria = c.id_categoria
;

SELECT nome_produto, setor
FROM produtos AS p
INNER JOIN categorias AS c
	ON p.id_categoria = c.id_categoria
WHERE preco > 2000 && setor = "Eletrônicos"
;

SELECT nome_produto, nome_categoria, preco
FROM produtos AS p
INNER JOIN categorias AS c
	ON p.id_categoria = c.id_categoria
ORDER BY preco ASC
;