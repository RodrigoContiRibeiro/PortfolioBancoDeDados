use biblioteca;

#Tabela Assuntos
create table Assuntos(
	codigoAssunto int auto_increment,
    nomeAssunto varchar(50),
    primary key(codigoAssunto)
);
#Inserção de valores
insert Assuntos(nomeAssunto) value("Romance");
insert Assuntos(nomeAssunto) value("Mistério");
#Visualização dos assuntos
select * from Assuntos;

#Relacionamento entre Livro e Assuntos
create table ConterAssun(
	conterAssun int auto_increment,
    fkLivroCodigoLivro int,
    fkAssuntosCodigoAssunto int,
    foreign key(fkLivroCodigoLivro) references Livro(codigoLivro),
    foreign key(fkAssuntosCodigoAssunto) references Assuntos(codigoAssunto),
    primary key(conterAssun)
);
#Inserção de valores
insert ConterAssun(fkLivroCodigoLivro, fkAssuntosCodigoAssunto) values (1, 1);
insert ConterAssun(fkLivroCodigoLivro, fkAssuntosCodigoAssunto) values (2, 1);
#Visualização dos IDS
select * from ConterAssuntos;

#Tabela SubAssuntos
create table SubAssuntos(
	codigoSubAssunto int auto_increment,
    nomeSubAssunto varchar(50),
    primary key(codigoSubAssunto)
);
#Inserção de valores
insert SubAssuntos(nomeSubAssunto) value ("Romance Histórico");
insert SubAssuntos(nomeSubAssunto) value ("Romance Infanto-Juvenil");
insert SubAssuntos(nomeSubAssunto) value ("Mistério Investigativo");
#Visualização dos subassuntos
select * from SubAssuntos;

#Relacionamento entre Assuntos e SubAssuntos
CREATE TABLE conterSubAssuntos (
    conterSubAssuntosId INT AUTO_INCREMENT PRIMARY KEY,
    fkAssuntosCodigoAssunto INT,
    FOREIGN KEY (fkAssuntosCodigoAssunto)
        REFERENCES Assuntos (codigoAssunto),
    fkSubAssuntosCodigoSubAssunto INT UNIQUE,
    FOREIGN KEY (fkSubAssuntosCodigoSubAssunto)
        REFERENCES SubAssuntos (codigoSubAssunto)    
);
#Inserção de valores
insert conterSubAssuntos(fkAssuntosCodigoAssunto,fkSubAssuntosCodigoSubAssunto) values (1,1);
insert conterSubAssuntos(fkAssuntosCodigoAssunto,fkSubAssuntosCodigoSubAssunto) values (1,3);
insert conterSubAssuntos(fkAssuntosCodigoAssunto,fkSubAssuntosCodigoSubAssunto) values (2,2);
#Visualização dos IDS
select * from conterSubAssuntos;
