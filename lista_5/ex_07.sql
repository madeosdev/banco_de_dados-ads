CREATE DATABASE bd_futebol;
USE bd_futebol;

CREATE TABLE times (
	id_time int primary key auto_increment,
    nome_time varchar(80),
    cidade varchar(50)
);

CREATE TABLE jogadores (
	id_jogador int primary key auto_increment,
    nome varchar(80),
    posicao varchar(40),
    gols int not null,
    id_time int not null,
    foreign key (id_time) references times (id_time)
);

INSERT INTO times (nome_time, cidade) VALUES
("Estrela FC", "São Paulo"),
("União Esportiva", "Rio de Janeiro"),
("Atlético Central", "Belo Horizonte"),
("Clube do Sul", "Curitiba")
;

INSERT INTO jogadores (nome, posicao, gols, id_time) VALUES
("Lucas Silva", "Atacante", 18, 1),
("André Costa", "Meio-campo", 7, 1),
("Bruno Santos", "Atacante", 22, 2),
("Felipe Lima", "Zagueiro", 2, 3),
("Caio Rocha", "Atacante", 15, 3),
("Dieogo Alves", "Meio-campo", 9, 4)
;

SELECT nome, posicao, nome_time
FROM jogadores AS j
INNER JOIN times AS t
	ON j.id_time = t.id_time
;

SELECT nome, posicao, nome_time, cidade
FROM jogadores AS j
INNER JOIN times AS t
	ON j.id_time = t.id_time
WHERE posicao = "Atacante" && cidade = "São Paulo" || cidade = "Rio de Janeiro" 
;

SELECT nome, nome_time, gols
FROM jogadores AS j
INNER JOIN times AS t
	ON j.id_time = t.id_time
ORDER BY gols DESC
;