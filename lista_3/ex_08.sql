CREATE DATABASE ListaEmpresas;
USE ListaEmpresas;

CREATE TABLE empresas (
	id int primary key auto_increment,
    nome varchar(100),
    cnpj varchar(18),
    endereco text
);

CREATE TABLE filiais (
	id int primary key auto_increment,
    nome varchar(100),
    endereco text,
    telefone varchar(20),
    id_empresa int not null,
    foreign key (id_empresa) references empresas(id)
);

INSERT INTO empresas (nome, cnpj, endereco) VALUES
('Varejo Sul S.A.', '11.222.333/0001-44', 'Curitiba'),
('Logística Express Ltda', '55.666.777/0001-88', 'São Paulo'),
('Rede de Supermercados Alvorada', '99.888.777/0001-11', 'Belo Horizonte')
;

INSERT INTO filiais (nome, endereco, telefone, id_empresa) VALUES
('Filial Curitiba Centro', 'Av. Cândido de Abreu, 500, Centro', '(41) 3333-1111', 1),
('Filial Londrina', 'Rua Sergipe, 120, Centro', '(43) 3322-4455', 1),
('Filial Hub SP Zona Sul', 'Av. das Nações Unidas, 12900, Brooklin', '(11) 4004-9988', 2),
('Filial Campinas', 'Av. Francisco Glicério, 850, Centro', '(19) 3211-7766', 2),
('Filial Savassi BH', 'Rua dos Aimorés, 1200 - Savassi, Belo Horizonte - MG', '(31) 3300-5555', 3)
;

SELECT *
FROM filiais AS f
INNER JOIN empresas AS e
	ON e.id = f.id_empresa
;