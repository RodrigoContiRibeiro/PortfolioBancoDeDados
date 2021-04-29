use biblioteca;

#Tabela Livro
create table Livro (
	codigoLivro int auto_increment,
    titulo varchar(50),
    edicao varchar(50),
    primary key (codigoLivro)
);

#Tabela Autor
create table Autor (
	codigoAutor int auto_increment,
    nome varchar(100),
    nacionalidade varchar(50),
    paginaWeb varchar(100),
	email varchar(50),
    primary key (codigoAutor)
);

#Tabela de relacionamento entre Auto e Livro
create table Escrever (
	escreverId int auto_increment,
	fkCodigoLivro int,
    fkCodigoAutor int,
    foreign key(fkCodigoLivro) references Livro(codigoLivro),
    foreign key(fkCodigoAutor) references Autor(codigoAutor),
    primary key (escreverId)
);

#Inserção de valores para testar
insert Livro(titulo, edicao) values ("Guerra e Paz", "Companhia das Letras");
insert Livro(titulo, edicao) values ("Anna Karênina", "Companhia das Letras");
insert Livro(titulo, edicao) values ("Os Irmãos Karamázov", "Companhia das Letras");
insert Livro(titulo, edicao) values ("O Idiota", "Companhia das Letras");
insert Autor(nome,nacionalidade,paginaWeb,email) values ("Tolstói", "Russo", "tolstoi.com","tolstoi@gmail.com");
insert Autor(nome, nacionalidade, paginaWeb, email) values ("Dostoiévski", "Russo", "fiodor.com.ru", "fiodor@gmail.com");
insert Escrever(fkCodigoLivro, fkCodigoAutor) value (1, 1);
insert Escrever(fkCodigoLivro, fkCodigoAutor) value (2, 1);
insert Escrever(fkCodigoLivro, fkCodigoAutor) value (3, 2);
insert Escrever(fkCodigoLivro, fkCodigoAutor) value (4, 2);

#Query para teste
select * from Escrever;
