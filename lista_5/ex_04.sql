CREATE DATABASE bd_biblioteca;
USE bd_biblioteca;

CREATE TABLE autores (
	id_autor int primary key auto_increment,
    nome varchar(80),
    nacionalidade varchar(50)
);

CREATE TABLE livros (
	id_livro int primary key auto_increment,
    titulo varchar(100),
    genero varchar(40),
    paginas int not null,
    id_autor int not null,
    foreign key (id_autor) references autores (id_autor)
);

INSERT INTO autores (nome, nacionalidade) VALUES
("Machado de Assis", "Brasileiro"),
("George Orwell", "Britânico"),
("J. R. R. Tolkien", "Britânico"),
("Clarice Lispector", "Brasileiro")
;

INSERT INTO livros (titulo, genero, paginas, id_autor) VALUES
("Dom Casmurro", "Romance", 256, 1),
("1984", "Ficção", 328, 2),
("A Revolução dos Bichos", "Sátira", 152, 2),
("O Hobbit", "Fantasia", 310, 3),
("A Hora da Estrela", "Romance", 96, 4),
("Memórias de Brás Cubas", "Romance", 240, 1)
;

SELECT nome, titulo, genero
FROM autores AS a
INNER JOIN livros AS l
	ON l.id_autor = a.id_autor
;

SELECT nome, titulo, paginas, nacionalidade
FROM autores AS a
INNER JOIN livros AS l
	ON l.id_autor = a.id_autor
WHERE paginas > 200 && nacionalidade = "Brasileiro"
;

SELECT nome, titulo, paginas
FROM autores AS a
INNER JOIN livros AS l
	ON l.id_autor = a.id_autor
ORDER BY paginas DESC
;
