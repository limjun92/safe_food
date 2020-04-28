create database fooddb;
use fooddb;

create table food (
   code int primary key,
   name varchar(30),
   maker varchar(30),
   material varchar(600),
   image varchar(50),
   supportpereat varchar(30),
   calory varchar(30),
   carbo varchar(30),
   protein varchar(30),
   fat varchar(30),
   sugar varchar(30),
   natrium varchar(30),
   chole varchar(30),
   fattyacid varchar(30),
   transfat varchar(30)
);
select*from food;
drop table food;

create table memtb(
id varchar(20) primary key,
pw varchar(20),
name varchar(20),
addr varchar(200),
email varchar(50),
tel varchar(50),
alinfo varchar(500)
);

create table cart(
	cartid int primary key auto_increment,
    userid varchar(20),
    foodcode int,
    amount int
);
select code from food as f join cart as c on c.foodcode= f.code where c.userid='3';

select*from cart;
drop table cart;
INSERT INTO cart VALUES (1, '박구곤', 11, 1);

create table qna(
num int auto_increment primary key,
title varchar(50) not null,
content varchar(2000),
id varchar(20)
);

create table board(
num int auto_increment primary key,
id varchar(20) not null,
title varchar(200),
content varchar(2000)
);
select*from board;
drop table board;

create table comment(
num int auto_increment primary key,
qnanum varchar(20) not null,
content varchar(200),
id varchar(20)
);
select*from comment;
drop table comment;

select* from qna;
drop table qna;

select*from memtb;
delete from memtb where id='ssafy';
drop table memtb;