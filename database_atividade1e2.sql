/********* Atividade 1 e 2 ***********/

show databases;
create database agenda;
use agenda;
create table tbcontatos(
      id int primary key,
      nome varchar(50) not null,
      fone varchar(15) not null,
      email varchar(50)
);
      show tables;
      describe tbcontatos;
      
      insert into tbcontatos(id,nome,fone,email)
      values(1,'Bill Gates','1111-1111','bill@outlook.com');

      insert into tbcontatos(id,nome,fone,email)
      values(2,'Linus Torvalds','2222-2222','linus@gmai.com');
      
      insert into tbcontatos(id,nome,fone,email)
      values(3,'Bruna Marquezine','3333-3333','bruninha@gmail.com');

      insert into tbcontatos(id,nome,fone)
      values(4,'Bruce Dickinson','6666-6666');
      
      insert into tbcontatos(id,nome,fone,email)
      values(5,'Tony Stark','5555-5555','ts@gmail.com');
      
      select * from tbcontatos;
      select * from tbcontatos where nome = 'Bill Gates';
      select * from tbcontatos order by nome asc;
      select nome,fone from tbcontatos;
      select nome as contato, fone as telefone from tbcontatos;
      
      update tbcontatos set nome='Willian Gates' where id = 1;
      update tbcontatos set email='ironmaidem@gmail.com' where id = 4;
      update tbcontatos set fone='9999-1234', email='linus@tux.com' where id = 2;
      select * from tbcontatos;
      
      delete from tbcontatos where id = 5;
      select * from tbcontatos;