create database SISCLI;

create table funcionarios
(
	matricula_funcionario INT not null primary key auto_increment,
	nome_funcionario varchar(35) not null ,
	tipo_funcionario varchar(15) not null ,
	rg_funcionario varchar(10) not null ,
	cpf_funcionario varchar(15) not null ,
	ativo varchar(8) not null 
);

create table clientes
(
	id_cliente int not null primary key auto_increment,
	nome_cliente varchar(35) not null,
	rg_cliente varchar(10) not null,
	cpf_cliente varchar(15) not null,
	endereco_cliente varchar(40) not null
);

create table procedimento
(
	id_procedimento int not null primary key auto_increment,
	descricao_procedimento varchar(30),
	valor float not null
);

create table atendimento
(
	id_atendimento int not null primary key auto_increment,
	data_atendimento date not null
)

alter table atendimento 
add matricula_medico INT NOT null,
add codigo_paciente INT NOT null,
add codigo_procedimento INT NOT null;

alter table atendimento 
add constraint fk_matricula_medico foreign key (matricula_medico) references funcionarios(matricula_funcionario),
add constraint fk_id_paciente foreign key(codigo_paciente) references clientes(id_cliente),
add constraint fk_codigo_procedimento FOREIGN KEY (codigo_procedimento) REFERENCES procedimento(id_procedimento);
