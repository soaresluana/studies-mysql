// criando tabelas
create table studiesdio.pessoas(
	nome varchar(20) not null,
	nascimento date not null
);

create table studiesdio.pessoa (
	nome varchar(30) not null,
	nascimento date not null,
    id int auto_increment not null,
    primary key(id)
);

//inserindo dados na tabela

insert into studiesdio.pessoas values ('Luana Gabriela','1995-09-28');
insert into studiesdio.pessoa values ('Luana Soares', '1995-09-28', '01');
insert into studiesdio.pessoa values ('Daniela Soares', '1998-07-10', '02');


create table cidadao(
	idcidadao int not null primary key auto_increment,
	nome varchar(20)
);

insert into studiesdio.cidadao values('01','Rafael Silva');

//selecionando e alterando dados
select * from pessoa;
select * from pessoas;

select nome from pessoa;

update pessoa set nome='Luana Gabriela Soares';
update pessoa set nome='Daniela Souza' where id='02';

insert into studiesdio.pessoa values ('Luana Soares', '1995-09-28', '01');
insert into studiesdio.pessoa values ('Camila Tavares', '1991-05-03', '03');
insert into studiesdio.pessoa values ('Camilo Melges', '1991-06-22', '04');

//deletando e ordenando dados
delete from pessoa where id ='01';

update pessoa set nome='Heloisa Tavares' where id='03';
update pessoa set nome='Camilo Silva' where id='04';

select * from pessoa order by nome desc;
select * from pessoa order by nome asc;

//agrupando dados

alter table pessoa 
modify column id int first;

insert into studiesdio.pessoa values ('05','João Pascal', '1989-03-01','M');

update pessoa set genero='F' where id='01';
update pessoa set genero='F' where id='02';
update pessoa set genero='F' where id='03';
update pessoa set genero='M' where   id='04';
update pessoa set genero='M' where id='05';

select genero, count(id) from pessoa 
group by genero; //conta a quantidade de elementos dentro de determinado agrupamento.

select nascimento, count(id) from pessoa
group by nascimento;

//deletando uma tabela 

drop table cidadao;
drop table pessoas;

describe pessoa;

insert into studiesdio.pessoa values 
('06', 'Maria Souza', '1959-08-23','F'),
('07','Francisco Chagas','1961-09-01','M'),
('08','Juliana Lima','1994-05-07','F');

alter table pessoa 
add column profissao varchar(15);

//alterando dados 

alter table pessoa 
modify column profissao varchar(25); // era (15)

update pessoa set profissao='Desenvolvedora Web' where id='01';
update pessoa set profissao='Cabeleireira' where id='02';
update pessoa set profissao='Advogada' where id='03';
update pessoa set profissao='Engenheiro de Software' where id='04';
update pessoa set profissao='Desenvolvedora Web' where id='01';
update pessoa set profissao='Analista Financeiro' where id='05';
update pessoa set profissao='Zeladora' where id='06';
update pessoa set profissao='Aposentado' where id='07';
update pessoa set profissao='Social Media' where id='08';

select * from pessoa;

select * from pessoa 
order by profissao desc;

//filtrando  colunas

select nome, profissao from pessoa
order by nome;

select nascimento from pessoa;



