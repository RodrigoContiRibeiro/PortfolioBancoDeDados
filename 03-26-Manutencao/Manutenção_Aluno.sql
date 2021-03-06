DROP DATABASE IF EXISTS DBALUNO;
CREATE DATABASE DBALUNO;
USE DBALUNO;

CREATE TABLE ALUNO (
	IDALUNO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(20) NOT NULL,
	SEXO ENUM ('M', 'F'),
	IDADE int,
	CIDADE VARCHAR(20)
);

#Modificações nas colunas
ALTER TABLE ALUNO
MODIFY COLUMN NOME VARCHAR(45) NOT NULL;
ALTER TABLE ALUNO
MODIFY COLUMN SEXO CHAR(1) NOT NULL;
ALTER TABLE ALUNO
MODIFY COLUMN CIDADE VARCHAR(45);
describe ALUNO;
