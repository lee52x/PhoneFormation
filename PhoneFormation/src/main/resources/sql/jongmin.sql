--1대 1문의

drop table ph_ono;
create table ph_ono(
ono number primary key,
userid varchar2(50) foreign key,
title varchar2(100)	not null,
categori varchar2(30) not null,
content varchar2(100) not null,
image_path varchar2(500),
regdate date default sysdate,
answer varchar2(100),
answer_regdate date
);

drop sequence ph_ono_seq;
create sequence ph_ono_seq
   start with 1
   increment by 1 
   nocache
   nocycle;


select*from ph_ono;
