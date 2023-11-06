create database medico;

use medico

create table paciente 
(
num_paciente int,
nome varchar(200),
datanas date,
sexo varchar(9),
cod_convenio int,
est_civil varchar(40),
rg varchar(12),
telefone varchar(11),
endereco varchar(30),
num_consulta int,


primary key(num_paciente),
foreign key(cod_convenio)references convenio(cod_convenio),
);

create table consulta
(
num_paciente int,
dt_consulta date,
num_medico int,
diagnostico varchar(300),
num_exame int,

foreign key(num_exame)references exame(num_exame),
foreign key(num_paciente)references paciente(num_paciente),
foreign key(num_medico)references medico(num_medico)
);


create table exame
(
dt_exame date,
exame varchar(120),
resultados varchar(300),
num_exame int,

primary key (num_exame)
);


create table convenio
(
cod_convenio int,
tipo_convenio varchar(300),
descrição varchar(300),

primary key (cod_convenio)
);


create table medico
(
nome varchar(200),
idade int,
num_medico int,
cod_esp int,

primary key (num_medico),
foreign key(cod_esp)references especializacao(cod_esp)
);



create table especializacao
(
cod_esp int,
descricao varchar(300),
tipo_esp varchar(30),

primary key (cod_esp)
);


drop table paciente;
drop table especializacao;
drop table medico;
drop table convenio;
drop table exame;
drop table consulta;