-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para sql server - remoto - produção */

CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
); 

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	temperatura DECIMAL,
	umidade DECIMAL,
	momento DATETIME,
	fk_aquario INT
);


/* para workbench - local - desenvolvimento */
CREATE DATABASE acquatec;

USE acquatec;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    sobrenome VARCHAR (50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

create table musicas (
id INT PRIMARY KEY auto_increment,
nome varchar (50)
);

insert into musicas (nome)
values ('universo'),
       ('levanta e anda'),
       ('um acorde'),
       ('sucesso na vida'),
       ('cancao infantil');
       
CREATE TABLE comentarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
	fk_musica INT,
	FOREIGN KEY (fk_musica) REFERENCES musicas(id),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

CREATE TABLE avaliacoes(
    id INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(150),
	classificacao varchar(10),
    fk_musica INT,
	FOREIGN KEY (fk_musica) REFERENCES musicas(id)
);

select * from usuario;
select * from musicas;
select * from comentarios;
select * from avaliacoes;

SELECT 
            co.id AS idcomentario,
            mu.nome,
            co.descricao,
            co.fk_usuario,
            u.id AS idUsuario,
            u.nome,
            u.email,
            u.senha
        FROM comentarios co
            INNER JOIN usuario u
                ON co.fk_usuario = u.id
                INNER JOIN musicas mu 
                ON co.fk_musica = mu.id;
                
create table quantidade(
fk_musica int,
primary key (fk_musica),
foreign key (fk_musica) references musicas (id),
contador int
);

insert into quantidade (fk_musica,contador)
values (1,0),(2,0),(3,0),(4,0),(5,0);            

select * from quantidade;