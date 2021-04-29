#Exercício - 01
create table cadastroFb(
nome varchar(25) not null,
sobrenome varchar(25) not null,
email varchar(40) not null,
senha varchar(20) not null,
nasc date not null,
sexo varchar(10) not null,
primary key(email) );

#Exercício - 02
create table cadastroAluno(
idaluno int auto_increment not null,
nome varchar(50) not null,
primary key(idaluno) );

#Exercício - 03
create table cadastroCarro(
marca varchar(20) not null,
modelo varchar(25) not null,
anoFabri char(4) not null,
anoModelo char(4) not null,
placa varchar(10) not null,
cor varchar(15) not null,
nChassi char(17) not null,
primary key(nChassi) );

#Exercício - 04
create table cadastroLivro(
IDLivro int auto_increment not null,
##Criei um ID, pois os outros atributos
#não são únicos.
titulo varchar(50),
autor varchar(50),
editora varchar(25),
anoPubli char(4),
primary key(IDLivro) );
