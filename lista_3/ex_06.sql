CREATE DATABASE FornecedoresDB;
USE FornenecedoresDB;

CREATE TABLE fornecedores (
	id int primary key auto_increment,
    nome varchar(100),
    cnpj varchar(18),
    telefone varchar(20)
);

CREATE TABLE produtos (
	id int primary key auto_increment,
    nome varchar(100),
    preco decimal(8,2),
    estoque int not null,
    id_fornecedor int not null,
    foreign key (id_fornecedor) references fornecedores (id)
);

INSERT INTO fornecedores (nome, cnpj, telefone) VALUES
('Tech & Cia Distribuidora Ltda', '12.345.678/0001-90', '(11) 98765-4321'),
('Alimentos do Campo S.A.', '98.765.432/0001-10', '(21) 91234-5678'),
('EletroMundo Importações', '45.678.912/0001-33', '(31) 99887-6655')
;

INSERT INTO produtos (nome, preco, estoque, id_fornecedor) VALUES
('Mouse Sem Fio Ergonômico', 89.90, 100, 1),
('Teclado Mecânico RGB', 249.50, 75, 1),
('Café Orgânico Torrado 500g', 32.00, 200, 2),
('Azeite de Oliva Extra Virgem 500ml', 45.90, 200, 2),
('Fone de Ouvido Bluetooth', 129.99, 100, 3)
;

SELECT *
FROM produtos AS p
INNER JOIN fornecedores AS f
	ON f.id = p.id_fornecedor
;