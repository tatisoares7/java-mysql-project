create database dbvendas;
use dbvendas;

create table tbusuario(
idusuario int primary key,
usuario varchar(100) not null,
fone varchar(15) not null,
login varchar(15) not null unique,
senha varchar(15) not null
);

insert into tbusuario(idusuario, usuario, fone, login, senha)
values (1, 'Admin', '9999-999', 'adm', '123456');


create table tbcliente(
idcliente int primary key default '0',
nome varchar(30) default 'sem nome',
email varchar(100) default 'sem email'
);

insert into tbcliente(idcliente, nome)
values (1, 'Tatiane');

select*from tbcliente;

create table tbplataforma(
idplat int primary key auto_increment,
nomeplat varchar(100) not null unique
);

insert into tbplataforma(nomeplat)
values ('Mercado Livre');

select*from tbplataforma;

create table tbproduto(
idpdt int primary key auto_increment,
nome varchar(100) not null,
bitola varchar(50),
metragem varchar(50),
cor varchar(100),
quantidade int not null,
valor decimal(6.2)
);

create table tbestoque(
idestoque int primary key auto_increment,
qtdestoque int not null,
idpdt int not null,
foreign key(idpdt) references tbproduto(idpdt)
);

insert into tbproduto(nome, bitola, metragem, cor, quantidade, valor)
values ('Fio SIL 6mm 50m', '6mm', '50m', 'preto', 500, 2000.00); 

insert into tbproduto(nome, bitola, metragem, cor, quantidade, valor)
values ('Fio SIL 6mm 50m', '6mm', '50m', 'preto', 500, 2000.45); 

alter table tbproduto
drop column valor;

alter table tbproduto
add column valor varchar(100);


create table tbvenda(
idvenda int primary key auto_increment,
valorvenda varchar(50),
qtdvendida int not null,
datavenda timestamp default current_timestamp,
idpdt int not null,
foreign key(idpdt) references tbproduto(idpdt),
idcliente int not null,
foreign key(idcliente) references tbcliente(idcliente),
idplat int not null,
foreign key(idplat) references tbplataforma(idplat)
);

describe tbusuario;
select * from tbusuario;
describe tbcliente;
select * from tbcliente;
describe tbvenda;

ALTER TABLE tbvenda MODIFY COLUMN idcliente int;
describe tbvenda;
select * from tbproduto;
use dbvendas;

insert into tbplataforma(nomeplat)
values ('Shopee');

insert into tbplataforma(nomeplat)
values ('Magazine Luiza');

insert into tbplataforma(nomeplat)
values ('Olist');

insert into tbplataforma(nomeplat)
values ('Presencial');

alter table tbvenda add column nomeplat varchar(100),
add constraint fk_nomeplat foreign key(nomeplat)
references tbplataforma (nomeplat);

describe tbvenda;

select*from tbvenda;

ALTER TABLE tbvenda DROP INDEX idplat;

alter table tbvenda drop column idplat;

drop table tbestoque;

select idvenda, valorvenda, qtdvendida,
 date_format(datavenda, '%d/%m/%Y - %H:%i'), 
 idpdt, idcliente, nomeplat from tbvenda where idvenda = 6; 










