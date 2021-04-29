DROP DATABASE IF EXISTS DBALUNO;
CREATE DATABASE DBALUNO;
USE DBALUNO;

CREATE TABLE ALUNO (
	IDALUNO INT NOT NULL AUTO_INCREMENT
	, NOME VARCHAR(20) NOT NULL
	, SEXO CHAR(1)
	, IDADE INT
	, CIDADE VARCHAR(20)
    , PRIMARY KEY (IDALUNO)
);

INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('ANDERSON', 17, 'M','PALHOCA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('CESAR', 21, 'M', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('DANIEL', 19, 'M', 'PALHOCA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('DIEGO', 19, 'M', 'BLUMENAU');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('EDUARDO', 20, 'M', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('GABRIEL', 19, 'M', 'TUBARAO');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('JOAO', 18, 'M', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('LEONARDO', 19, 'M', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('LUCAS', 20, 'M', 'BLUMENAU');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('PRISCILA', 19, 'F', 'PALHOÇA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('RENATA', 21, 'F', 'TUBARAO');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('MARIA', 22, 'F', 'BLUMENAU');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('TANIA', 19, 'F', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('CARLOS', 22, 'M', 'TUBARAO');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('JOSE', 19, 'M', 'PALHOCA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('MARISA', 19, 'F', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('AMANDA', 20, 'F', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('JOANA', 19, 'F', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('ALICE', 21, 'F', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('TADEU', 18, 'M', 'TUBARAO');


/* --------------QUERIES------------- */
/*1*/select * from ALUNO where sexo="M";
/*2*/select * from ALUNO where idade=19;
/*3*/select * from ALUNO where nome regexp "^D";
/*4*/select * from ALUNO where idade between 20 and 22;
/*5*/select * from ALUNO where cidade is null;
/*6*/select * from ALUNO where cidade="Blumenau";
/*7*/select * from ALUNO where not idade=18;
/*8*/select * from ALUNO where nome regexp "ri";
/*9*/select * from ALUNO where cidade="sao jose" and sexo="M" and idade<20;
/*10*/select * from ALUNO where (sexo="M" and idade>17) or (sexo="F" and idade>20);
/*11*/select * from ALUNO where nome regexp "a" or "r";
/*12*/select nome, idade from ALUNO where sexo="f";
/*13*/select idaluno, nome from ALUNO where cidade="blumenau";
/*14*/select nome, cidade from ALUNO where idade<18;
/*15*/select nome, cidade from ALUNO where idade between 15 and 18 and not cidade="palhoca";
/*16*/select cidade from ALUNO where cidade is null;
/*17*/select nome from ALUNO where idade=18 and cidade="palhoca" or idade=17 and cidade="sao jose";
/*18*/select nome from ALUNO where sexo="M" and cidade="tubarao" and idade between 18 and 25;
/*19*/select nome,idade from ALUNO order by idade asc;
/*20*/select idaluno,nome from ALUNO order by nome desc;
/*21*/select * from ALUNO order by idade desc, nome asc;
/*22*/select * from ALUNO order by sexo asc, nome asc;
