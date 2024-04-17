use aula_bd;

create table if not exists usuarios(
	usu_id int not null auto_increment,
    usu_nome varchar(30) not null,
    usu_ativo bit not null,
    primary key(usu_id)
);

create table if not exists clientes(
	usu_id int not null,
    cli_renda decimal(10,2) not null,
    primary key(usu_id)
);

create table if not exists funcionarios(
	usu_id int not null,
    func_num_filhos tinyint not null,
    func_salario decimal(10,2) not null,
    primary key(usu_id)
);

create table contato(
	cont_id int not null auto_increment,
    usu_id int not null,
    cont_tipo varchar(20),
    cont_contato varchar(60) not null,
    cont_principal bit not null,
    primary key (cont_id)
);