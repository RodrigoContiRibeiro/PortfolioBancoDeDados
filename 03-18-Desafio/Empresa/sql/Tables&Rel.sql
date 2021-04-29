create database Empresa;
use Empresa;
#Tabela Departamento
create table Departamento (
	DepartamentoID int auto_increment,
    Nome varchar(100),
    FkFuncionarioGerente int,
    DtInicioGerencia date,
    Localizacoes varchar(500),
    #foreign key(FkFuncionarioGerente) references Funcionario(IdFuncionario),
    primary key(DepartamentoID)
);
#Tabela Funcionario
create table Funcionario (
	IdFuncionario int auto_increment,
    Nome varchar(100),
    SeguroSocial varchar(50),
    Endereco varchar(100),
    Salario int,
    Sexo varchar(10),
    DtNascimento date,
    FkDepartamentoID int,
    #foreign key(FkDepartamentoID) references Departamento(DepartamentoID),
    primary key(IdFuncionario)
);
#Inserção de valores no Funcionario
insert Funcionario(Nome, SeguroSocial, Endereco, Salario, Sexo, DtNascimento)
values ("Rodrigo", "123456789", "Rua Não Sei", "9999", "M", "2004-08-08");
#Visualização dos valores de Funcionario
select * from Funcionario;
#Inserção de valores no Departamento
insert Departamento(Nome,DtInicioGerencia,Localizacoes)
values ("Dptm1", "2020-01-01", "Floripa e Florida");
#Visualização dos valores de Departamento
select * from Departamento;

#Adicionando Foreign Keys de uma em outra
alter table Departamento
add foreign key(FkFuncionarioGerente) references Funcionario(IdFuncionario);
alter table Funcionario
add foreign key(FkDepartamentoID) references Departamento(DepartamentoID);

#Colocando valores das foreign keys nas linhas já criadas
UPDATE Departamento 
SET 
    FkFuncionarioGerente = 1
WHERE
    DepartamentoID = 1;
UPDATE Funcionario 
SET 
    FkDepartamentoID = 1
WHERE
    IdFuncionario = 1;
#Visualização das linhas
select * from Departamento;
select * from Funcionario;

#Tabela Projeto com foreign key de um departamento
create table Projeto(
	ProjetoId int auto_increment,
    Nome varchar(100),
    Localizacao varchar(100),
    FkDepartamentoID int,
    foreign key(FkDepartamentoID) references Departamento(DepartamentoID),
    primary key(ProjetoId)
);
#Inserção e Visualização dos valores
insert Projeto(Nome, Localizacao, FkDepartamentoID) values ("Dormenthe", "Localizacao", 1);
select * from Projeto;

#Relacionamento entre Funcionario e Projeto
create table Atuar(
	AtuarId int auto_increment,
    FkIdFuncionario int,
    FkProjetoId int,
    foreign key(FkIdFuncionario) references Funcionario(IdFuncionario),
    foreign key(FkProjetoId) references Projeto(ProjetoId),
    primary key(AtuarId)
);
#Inserção e Visualização dos valores
insert Atuar(FkIdFuncionario, FkProjetoId) values (1,1);
select * from Atuar;

#Tabela Dependente com foreign key de Funcionario
CREATE TABLE Dependente (
    DependenteId INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    DtNascimento DATE,
    Sexo VARCHAR(5),
    Relacionamento VARCHAR(25),
    FkIdFuncionario INT,
    FOREIGN KEY (FkIdFuncionario)
        REFERENCES Funcionario (IdFuncionario),
    PRIMARY KEY (DependenteId)
);
#Inserção e Visualização dos valores
insert Dependente(Nome, DtNascimento, Sexo, Relacionamento, FkIdFuncionario)
values ("Cachorro", "2010-01-01", "M", "Pet", 1);
select * from Dependente;
