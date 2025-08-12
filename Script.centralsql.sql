create database centraltec; 

create table cliente(
	id serial primary key,
	nome varchar(25) not null,
	endereco_id int not null,
	foreign key (endereco_id) references endereco(id),
	cnpj char(18) not null unique
);

create table funcionario(
	id serial primary key,
	nome varchar(40) not null,
	cpf char(11) not null unique,
	telefone char(11) not null unique,
	endereco_id int not null,
	foreign key (endereco_id) references endereco(id),
	cargo_id int not null,
	foreign key (cargo_id) references cargo(id),
	data_nascimento date not null
);

create table dados_empresa(
	id serial primary key,
	razao_social varchar(20) not null,
	cnpj char(18) not null unique,
	endereco_id int not null,
	foreign key (endereco_id) references endereco(id),
);

create table endereco(
	id serial primary key,
	logradouro varchar(30) not null,
	localidade varchar(30) not null,
	uf varchar(30) not null,
	cep char(8) not null,
	bairro varchar(30) not null
);

create table cargo(
	id serial primary key,
	nome varchar(30) not null
);

create table produto(
	id serial primary key,
	descricao text not null,
	agenda_id int not null,
	foreign key (agenda_id) references agenda(id)
);

create table projeto(
	id serial primary key,
	descricao text not null,
	produto_id int not null,
	foreign key (produto_id) references produto(id),
	agenda_id int not null,
	foreign key (agenda_id) references agenda(id)
);

create table tarefa(
	id serial primary key,
	projeto_id int not null,
	foreign key (projeto_id) references projeto(id),
	agenda_id int not null,
	foreign key (agenda_id) references agenda(id),
	descricao text not null
);

create table agenda(
	id serial primary key,
	prazo date not null,
	data_inicial date not null
);

create table pagamento(
	id serial primary key,
	salario numeric(6,2) not null,
	funcionario_id int not null,
	foreign key (funcionario_id) references funcionario(id),
	pagamento_servico numeric(6,2) not null
);

create table servico(
	id serial primary key,
	descricao text not null,
	pagamento_id int not null,
	foreign key (pagamento_id) references pagamento(id),
	produto_id int not null,
	foreign key (produto_id) references produto(id)
);

create table departamento(
	id serial primary key,
	nome varchar(30) not null
);

create table linguagem_prog(
	id serial primary key,
	tipo varchar(15) not null
);

create table compra(
	id serial primary key,
	material varchar(50) not null
);

create table faturamento(
	id serial primary key,
	valor_produto numeric(6,2) not null,
	manutencao_id int not null,
	foreign key (manutencao_id) references manutencao(id)
	
);

create table manutencao(
	id serial primary key,
	produto_id int not null,
	foreign key (produto_id) references produto(id),
	valor_manutencao numeric(6,2) not null
);












