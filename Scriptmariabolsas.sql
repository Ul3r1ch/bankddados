create database mariabolsas;

create table usuario(
	id serial primary key unique not null,
	email varchar(80) not null,
	senha char(08),
	cpf char(14) not null,
	nome varchar(80),
	apelido varchar(50) not null,
	data_de_nascimento date,
	endereco_id int,
	foreign key (endereco_id) references endereco(id),
	telefone char(13) not null,
	genero varchar(10) not null
);

create table cadastro(
	id serial primary key unique not null,	
	nome varchar(30) not null,
	sobrenome varchar(30) not null,
	cpf char(11),
	celular char(14),
	endereco_id int,
	foreign key (endereco_id) references endereco(id)
);

create table endereco(
	id serial primary key unique not null,
	cep char(8) not null,
	logradouro varchar(50) not null,
	numero_casa int not null,
	cidade varchar(70) not null,
	uf varchar(20) not null,
	pais varchar(100) not null,
	ponto_referencia varchar(100) not null
	);

create table pedido(
	id serial primary key unique not null,
	data_pedido date not null,
	email varchar(80) not null,
	carrinho_id int,
	foreign key (carrinho_id) references carrinho(id),
	endereco_id int,
	foreign key (endereco_id) references endereco(id)
);


create table produto(
	id serial primary key unique not null,
	titulo varchar(70),
	quantidade_produto int,
	preco_produto numeric(10,2),
	preco_frete numeric(10,2),
	cor varchar(30),
	categoria int,
	altura numeric(5,2),
	largura numeric(5,2),
	peso float,
	profundidade numeric(5,2),
	descricao text not null,
	usuario_id int,
	foreign key (usuario_id) references usuario(id),
	pedido_id int,
	foreign key (pedido_id) references pedido(id),
	carrinho_id int,
	foreign key (carrinho_id) references carrinho(id)
	);

create table carrinho(
	id serial primary key unique not null,
	subtotal numeric(10,2) not null,
	pagamento_id int,
	foreign key (pagamento_id) references pagamento(id)
);


create table pagamento(
	id serial primary key unique not null,
	forma_pagamento varchar(50),
	valor_pagamento numeric(10,2)
);

create table loja(
	id serial primary key unique not null,
	pedido_id int,
	foreign key (pedido_id) references pedido(id),
	endereco_loja varchar(60) not null,
	cep_loja char(8) not null
);
 create table cartao_credito(
 	id serail primary key,
 	numero_cartao int,
 	validade date not null,
 	cvc char(3),
 	nome_cartao varchar(30)
 );




