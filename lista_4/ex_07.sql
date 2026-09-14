CREATE DATABASE BlogspotDB;
USE BlogspotDB;

CREATE TABLE usuarios (
	id int primary key auto_increment,
    nome varchar(100),
    email varchar(150)
);

CREATE TABLE posts (
	id int primary key auto_increment,
    titulo varchar(150),
    data_publicacao date,
    id_usuario int not null,
    foreign key (id_usuario) references usuarios (id)
);

CREATE TABLE comentarios (
	id int primary key auto_increment,
    texto text,
    data_comentario date,
    id_post int null,
    foreign key (id_post) references posts (id)
);

INSERT INTO usuarios (nome, email) VALUES
('Lucas Gabriel Rocha', 'lucas.rocha@email.com'),
('Beatriz Ferreira Souza', 'beatriz.souza@email.com')
;

INSERT INTO posts (titulo, data_publicacao, id_usuario) VALUES
('Boas Práticas em SQL Relacional', '2024-03-01', 1),
('Como Estruturar Banco de Dados para Web', '2024-03-05', 1),
('Tendências de Tecnologia para 2024', '2024-03-10', 2),
('Dicas de Carreira em Desenvolvimento', '2024-03-15', 2)
;

INSERT INTO comentarios (texto, data_comentario, id_post) VALUES
('Excelente artigo, ajudou muito!', '2024-03-02', 1),
('Dica muito útil para o meu projeto.', '2024-03-03', 1),
('Pode explicar mais sobre chaves estrangeiras?', '2024-03-06', 2),
('Ótima análise sobre o futuro da área.', '2024-03-11', 2),
('Concordo totalmente com o ponto 2.', '2024-03-12', 3),
('Artigo inspirador, obrigado por compartilhar!', '2024-03-16', 4),
('Salvando este post para ler novamente depois.', '2024-03-17', 4)
;

SELECT *
FROM posts AS p
INNER JOIN usuarios AS u
	ON u.id = p.id_usuario
;

SELECT *
FROM comentarios AS c
INNER JOIN posts AS p
	ON p.id = c.id_post
INNER JOIN usuarios AS u
	ON u.id = p.id_usuario
;