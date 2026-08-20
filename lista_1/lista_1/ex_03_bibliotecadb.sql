CREATE DATABASE BibliotecaDB;
USE BibliotecaDB;

CREATE TABLE livros (
	id_livro int primary key auto_increment,
    titulo varchar(150),
    autor varchar(150)
);

INSERT INTO livros(titulo, autor) values
('O Capital', 'Carlos Marcio'),
('Dracula', 'Bram Stocker'),
('Assassinato no Expresso do Oriente', 'Agatha Christie'),
('Neuromancer', 'David'),
('Alice no País das Maravilhas', 'Lewis Carroll');

DROP TABLE livros;
DROP DATABASE BibliotecaDB;
