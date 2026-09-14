CREATE DATABASE TransportadoraDB;
USE TransportadoraDB;

CREATE TABLE motoristas (
	id int primary key auto_increment,
    nome varchar(100),
    cnh varchar(12)
);

CREATE TABLE viagens (
	id int primary key auto_increment,
    origem varchar(50),
    destino varchar (50),
    data_viagem date,
    id_motorista int not null,
    foreign key (id_motorista) references motoristas (id)
);

CREATE TABLE cargas (
	id int primary key auto_increment,
    descricao text,
    peso decimal (8,2),
    id_viagem int not null,
    foreign key (id_viagem) references viagens (id)
);

INSERT INTO motoristas (nome, cnh) VALUES
('Antônio Marcos de Oliveira', '12345678901'),
('José Roberto Ferreira', '98765432100')
;

INSERT INTO viagens (origem, destino, data_viagem, id_motorista) VALUES
('São Paulo', 'Curitiba', '2024-04-01', 1),
('Curitiba', 'Florianópolis', '2024-04-03', 1),
('Rio de Janeiro', 'Belho Horizonte', '2024-04-02', 2),
('Belo Horizonte', 'Brasília', '2024-04-05', 2)
;

INSERT INTO cargas (descricao, peso, id_viagem) VALUES
('Lote de Peças Automotivas', 1250.50, 1),
('Eletrônicos Embalados', 800.00, 1),
('Alimentos Não Perecíveis', 2300.75, 2),
('Materiais de Escritório', 650.20, 3),
('Medicamentos em Caixa Térmica', 450.00, 4),
('Ferramentas Industriais', 1100.80, 4)
;

SELECT *
FROM viagens AS v
INNER JOIN motoristas AS m
	ON m.id = v.id_motorista
;

SELECT *
FROM cargas AS c
INNER JOIN viagens AS v
	ON v.id = c.id_viagem
INNER JOIN motoristas AS m
	ON m.id = v.id_motorista
;