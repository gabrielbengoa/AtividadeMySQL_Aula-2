create database dbinfox;
use dbinfox;

create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

describe tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'José de Assis','9999-9999','joseassis','123456');
select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'Administrador','9999-9999','admin','admin');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Bill Gates','9999-9999','bill','123456');

update tbusuarios set fone='8888-8888' where iduser=2;


delete from tbusuarios where iduser=3;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
bairrocli varchar(35),
cidcli varchar(50) not null,
estcli varchar(02) not null,
cepcli varchar(10) not null,
fonecli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes;
insert into tbclientes(nomecli,endcli,bairrocli,cidcli,estcli,cepcli,fonecli,emailcli)
values('Linus Torvalds','Rua Tux, 2015','Patriarca','São Paulo','SP','03555-000','9999-9999','linus@linux.com');
insert into tbclientes(nomecli,endcli,bairrocli,cidcli,estcli,cepcli,fonecli,emailcli)
values('Gabriel Barros Bengoa','Rua Fox, 007','Patriarca','São Paulo','SP','15444-060','1111-1111','gabrielbengoa2795@gmail.com');
insert into tbclientes(nomecli,endcli,bairrocli,cidcli,estcli,cepcli,fonecli,emailcli)
values('Rodrigo Blabla','Rua Moon, 1998','Vila Matilde','São Paulo','SP','54777-050','5492-9988','rodrigobla@ig.com.br');

select * from tbclientes