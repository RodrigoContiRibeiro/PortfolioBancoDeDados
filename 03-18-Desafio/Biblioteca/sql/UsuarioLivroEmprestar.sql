use biblioteca;

#Relacionamento entre Livro e Usuario
create table Emprestar(
	emprestarId int auto_increment,
    fkLivroCodigoLivro int unique,
    fkUsuarioMatricula int,
    foreign key(fkLivroCodigoLivro) references Livro(codigoLivro),
    foreign key(fkUsuarioMatricula) references Usuario(matricula),
    primary key(emprestarId)
);
#Inserção de Valores
insert Emprestar(fkLivroCodigoLivro, fkUsuarioMatricula) values (2, 1);
insert Emprestar(fkLivroCodigoLivro, fkUsuarioMatricula) values (1, 1);
insert Emprestar(fkLivroCodigoLivro, fkUsuarioMatricula) values (3, 2);
#Visualização dos IDS
select * from Emprestar;
