use biblioteca;

#Tabela Usuario
create table Usuario(
	matricula int auto_increment,
    nome varchar(100),
    endereco varchar(100),
    email varchar(100),
    primary key(matricula)
);

#Relacionamento entre Usuario e Livro
create table Reservar(
	reservaId int auto_increment,
    fkUsuarioMatricula int unique,
    fkLivroCodigoLivro int,
    foreign key(fkUsuarioMatricula) references Usuario(matricula),
    foreign key(fkLivroCodigoLivro) references Livro(codigoLivro),
    primary key(reservaId)
);
#Inserção de valores no Usuario
insert Usuario(nome, endereco, email) values("Rodrigo", "Servidão seilá", "rodrigo@gmail.com");
insert Usuario(nome, endereco, email) values("Claudio", "Servidão seilá", "claudio@gmail.com");
insert Usuario(nome, endereco, email) values("Bruno", "Servidão seilá", "bruno@gmail.com");
#Inserção de valores no relacionamento
insert Reservar(fkUsuarioMatricula,fkLivroCodigoLivro) values (1,1);
insert Reservar(fkUsuarioMatricula,fkLivroCodigoLivro) values (2,2);
insert Reservar(fkUsuarioMatricula,fkLivroCodigoLivro) values (3,2);
#Visualização dos IDS
select * from Reservar;
