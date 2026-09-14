CREATE DATABASE BibliotecaDB;
USE BibliotecaDB;

CREATE TABLE autores (
	id int primary key auto_increment,
    nome varchar(100),
    nacionalidade varchar(50)
);

CREATE TABLE livros (
	id int primary key auto_increment,
    titulo varchar(150),
    ano_publicacao int not null,
    id_autor int not null,
    foreign key (id_autor) references autores(id)
);

CREATE TABLE emprestimos (
	id int primary key auto_increment,
    data_emprestimo datetime,
    data_devolucao datetime,
    id_livro int not null,
    foreign key (id_livro) references livros (id)
);

INSERT INTO autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileiro'),
('George Orwell', 'Britânico')
;

INSERT INTO livros (titulo, ano_publicacao, id_autor) VALUES
('Dom Casmurro', 1899, 1),
('Memórias de Brás Cubas', 1881, 1),
('1984', 1948, 2),
('A Revolução dos Bichos', 1945, 2)
;

INSERT INTO emprestimos (data_emprestimo, data_devolucao, id_livro) VALUES
('2024-03-01', '2024-03-15', 1),
('2024-03-05', '2024-03-20', 2),
('2024-03-10', '2024-03-25', 3),
('2024-04-01', '2024-04-15', 1),
('2024-04-16', '2024-05-01', 4)
;

SELECT *
FROM livros AS l
INNER JOIN autores AS a
	ON a.id = l.id_autor
;

SELECT *
FROM emprestimos AS e
INNER JOIN livros AS l
	ON l.id = e.id_livro
INNER JOIN autores AS a
	ON a.id = l.id_autor
;