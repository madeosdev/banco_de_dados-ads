CREATE DATABASE LivrariaDB;
USE LivrariaDB;


CREATE TABLE autores (
	id int primary key auto_increment,
    nome varchar(100),
    nacionalidade varchar(50),
    data_nascimento datetime
);

CREATE TABLE livros (
	id int primary key auto_increment,
    titulo varchar(100),
    ano_publicacao int not null,
    preco decimal(8,2),
    id_autor int not null,
    foreign key (id_autor) references autores(id)
);

INSERT INTO autores(nome, nacionalidade, data_nascimento) VALUES
('Friedrich Nietzsche', 'Alemão', '1844-10-15'),
('Yukio Mishima', 'Japonês', '1925-11-14'),
('Martin Heidegger', 'Alemão', '1889-09-26')
;

INSERT INTO livros (titulo, ano_publicacao, preco, id_autor) VALUES
('A Gaia Ciência', 1882, 79.99, 1),
('Assim Falou Zarathusthra', 1883, 89.99, 1 ),
('O Templo do Pavilhão Dourado', 1956, 119.99, 2),
('Que é Metafísica?', 1929, 109.99, 3),
('Kant e o Problema da Metafísica', 1929, 109.99, 3)
;

SELECT *
FROM livros AS l
INNER JOIN autores AS a
	ON a.id = l.id_autor
;