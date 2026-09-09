CREATE DATABASE BlogspotDB;
USE BlogspotDB;

CREATE TABLE blogs (
	id int primary key auto_increment,
    nome varchar(100),
    descricao text,
    data_criacao datetime
);

CREATE TABLE posts(
	id int primary key auto_increment,
    titulo varchar(100),
    conteudo text,
    data_publicacao datetime,
    id_blog int not null,
    foreign key (id_blog) references blogs(id)
);

INSERT INTO blogs (nome, descricao, data_criacao) VALUES
('Tech Insights', 'Artigos e novidades sobre tecnologia, programação e inovação.', '2024-01-15'),
('Sabores & Receitas', 'Dicas culinárias, receitas práticas e gastronomia do dia a dia.', '2024-02-01'),
('Vida Saudável', 'Conteúdos voltados para bem-estar, exercícios físicos e nutrição.', '2024-03-10')
;

INSERT INTO posts (titulo, conteudo, data_publicacao, id_blog) VALUES
('Introdução à Inteligência Artificial', 'Um panorama geral sobre como a IA está transformando o mercado de desenvolvimento.', '2024-01-20', 1),
('Dicas para Otimizar Consultas SQL', 'Aprenda boas práticas de indexação e estruturação de dados em bancos relacionais.', '2024-01-25', 1),
('Como Fazer um Pão Caseiro Perfeito', 'Passo a passo com ingredientes simples para preparar um pão macio e crocante.', '2024-02-05', 2),
('Benefícios da Meditação Diária', 'Entenda como apenas 10 minutos diários podem reduzir o estresse e melhorar o foco.','2024-03-15', 3),
('Guia Prático de Marmitas Saudáveis', 'Planeje suas refeições da semana de forma prática, econômica e nutritiva.', '2024-03-20', 3)
;

SELECT *
FROM posts AS p
INNER JOIN blogs AS b
	ON b.id = p.id_blog
;