CREATE DATABASE alem_do_rap;

USE alem_do_rap;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    sobrenome VARCHAR (50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

insert into usuario (nome,sobrenome,email,senha)
values ('mariana','cazzoto','mariana@gmail.com',12345),
	   ('gustavo','martins','gustavo@gmail.com',12345),
       ('mayara','mota','mayara@gmail.com',12345),
       ('antonio','lima','antonio@gmail.com',12345);

create table musicas (
id INT PRIMARY KEY auto_increment,
nome varchar (25)
);

insert into musicas (nome)
values ('Universo'),
       ('Levanta e Anda'),
       ('Um Acorde'),
       ('Sucesso na Vida'),
       ('Cancao Infantil'),
       ('A Vida é Desafio');
       
CREATE TABLE comentarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
	fk_musica INT,
	FOREIGN KEY (fk_musica) REFERENCES musicas(id),
    descricao VARCHAR(300),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

insert into comentarios (id,fk_musica,descricao,fk_usuario)
values (1,4,'Gostei muito da musica através dessa descricao pude perceber situaçoes que nao imaginava',1),
	   (2,6,'Muito interessante consegui perceber aspectos da vida cotidiana e compreender o espaço a minha volta',2),
       (3,6,'Interessante este conceito se percebe as injustiças e a falta de oportunidade',3),
	   (4,5,'Embora o conteudo seja bem interessante,continuo com a mesma opiniao',4),
       (5,5,'Caraca não imagina tantas coisas positivas que essa música tinha',4);

create table quantidade(
fk_musica int,
primary key (fk_musica),
foreign key (fk_musica) references musicas (id),
contador int
);

insert into quantidade (fk_musica,contador)
values (1,9),(2,15),(3,7),(4,11),(5,19),(6,5);            

select * from usuario;
select * from musicas;
select * from comentarios;
select * from quantidade;
