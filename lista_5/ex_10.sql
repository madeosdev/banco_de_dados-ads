CREATE DATABASE bd_cinema;
USE bd_cinema;

CREATE TABLE categorias (
	id_categoria int primary key auto_increment,
    nome_categoria varchar(50),
    classificacao varchar(20)
);

CREATE TABLE filmes (
	id_filme int primary key auto_increment,
    id_categoria int not null,
    foreign key (id_categoria) references categorias (id_categoria),
    titulo varchar(100),
    diretor varchar(80),
    ano int not null
);

INSERT INTO categorias (nome_categoria, classificacao) VALUES
("Ação", "14 anos"),
("Comédia", "Livre"),
("Drama", "12 anos"),
("Ficção", "10 anos")
;

INSERT INTO filmes (id_categoria, titulo, diretor, ano) VALUES
(1, "Mad Max", "George Miller", 2015),
(2, "O Máskara", "Chuck Russell", 1994),
(3, "O Poderoso Chefão", "Francis Coppola", 1972),
(4, "Interestelar", "Christopher Nolan", 2014),
(3, "Parasita", "Bong Joon-ho", 2019),
(1, "Gladiador", "Ridley Scott", 2000)
;

SELECT titulo, diretor, nome_categoria
FROM filmes AS f
INNER JOIN categorias AS c
	ON f.id_categoria = c.id_categoria
;

SELECT titulo, diretor, nome_categoria, ano
FROM filmes AS f
INNER JOIN categorias AS c
	ON f.id_categoria = c.id_categoria
WHERE ano > 2010 && nome_categoria = "Ação" || nome_categoria = "Ficção"
;

SELECT titulo, nome_categoria, ano
FROM filmes AS f
INNER JOIN categorias AS c
	ON f.id_categoria = c.id_categoria
ORDER BY ano ASC
;