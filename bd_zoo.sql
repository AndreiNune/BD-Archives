create database bd_zoo;

use bd_zoo;

--- Tabela Funcionario

create table funcionario
(
cod_cargo int NOT NULL,
nome varchar (120) NOT NULL,
dt_nasc date NOT NULL,
cod_func int NOT NULL,
CPF varchar (14) NOT NULL,
RG varchar (12) NOT NULL,
endereco varchar (120) NOT NULL,

primary key (cod_func),
foreign key (cod_cargo) references cargo,
);

--- Tabela Veterinario

create table veterinario
(
cod_func int NOT NULL,
nome varchar (120) NOT NULL,
dt_nasc date NOT NULL,
CRMV varchar (13) NOT NULL,
cod_veterinario int NOT NULL,

primary key (cod_veterinario),
foreign key (cod_func) references funcionario
);

--- Tabela Conulta

create table consulta
(
cod_veterinario int NOT NULL,
dt_consulta date NOT NULL,
hr_consulta time NOT NULL,
cod_animal int NOT NULL,

foreign key (cod_veterinario) references veterinario,
foreign key (cod_animal) references animal
);

--- Tabela Animal

create table animal
(
nome varchar (120) NOT NULL,
especie varchar (120) NOT NULL,
cor varchar (30) NOT NULL,
altura varchar (5) NOT NULL,
num_container int NOT NULL,
cod_classe int NOT NULL,
cod_animal int NOT NULL,

primary key (cod_animal),
foreign key (num_container) references container,
foreign key (cod_classe) references classe
);

--- Tabela Classe

create table classe
(
cod_classe int NOT NULL,
descricao varchar (200) NOT NULL,

primary key (cod_classe)
);

--- Tabela Cargo

create table cargo
(
cod_cargo int NOT NULL,
tipo_cargo varchar (20) NOT NULL,
descricao varchar (200) NOT NULL,

primary key (cod_cargo)
);

--- Tabela Limpa

create table limpa
(
num_container int NOT NULL,
cod_func int NOT NULL,
dt_limpeza date NOT NULL,
hr_limpeza time NOT NULL,

foreign key (num_container) references container,
foreign key (cod_func) references funcionario
);

--- Tabela container

create table container
(
num_container int NOT NULL,
num_ala int NOT NULL,

primary key (num_container),
foreign key (num_ala) references ala
);

--- Tabela Ala

create table ala
(
descicao varchar (200) NOT NULL,
num_ala int NOT NULL,

primary key (num_ala)
);

