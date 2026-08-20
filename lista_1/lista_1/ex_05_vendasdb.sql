CREATE DATABASE VendasDB;
USE VendasDB;

CREATE TABLE Produtos (
	id_produto int primary key auto_increment,
    nome_produto VARCHAR(100),
    preco float
);

INSERT INTO Produtos (nome_produto, preco) values
('Livro sobre Java', 59.99),
('Computador Gamer', 2499.99),
('Teclado Mecânico RGB', 199.99),
('Mouse Gamer', 99.99)
;

SELECT *
FROM Produtos;

SELECT *
FROM Produtos
WHERE preco >= 99.90;

DROP TABLE Produtos;
DROP DATABASE VendasDB;