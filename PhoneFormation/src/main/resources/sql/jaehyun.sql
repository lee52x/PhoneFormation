--board.sql
drop table ph_reply;
drop table ph_board;
drop table ph_boardtype;
drop table ph_ono;
drop table ph_boardgood;

create table ph_boardtype(
	tno number primary key,
	title varchar2(50) not null
);

create table ph_board(
   bno number primary key,
   tno number references ph_boardtype(tno),
   title varchar2(200) not null,
   content varchar2(1000) not null,
   image varchar2(200),
   replycnt number default 0,
   writer varchar2(50) references ph_member(userid),
   regdate date default sysdate,
   viewcnt number default 0
);

create table ph_boardgood(
bno number references ph_board(bno),
replyer varchar2(50) references ph_member(userid),
primary key(bno,replyer)
)

create table ph_ono(
ono number primary key,
userid varchar2(50) references ph_member(userid),
title varchar2(100)	not null,
category varchar2(30) not null,
content varchar2(100) not null,
image varchar2(500),
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

create table ph_reply(
   rno         number primary key,
   bno        number references ph_board(bno),
   replytext   varchar2(1000) not null,
   replyer      varchar2(50) references ph_member(userid),
   regdate     date default sysdate
);

drop sequence ph_boardtype_seq;
create sequence ph_boardtype_seq
   start with 1
   increment by 1 
   nocache
   nocycle;

drop sequence ph_reply_seq;
create sequence ph_reply_seq
	start with 1
	increment by 1 
	nocache
	nocycle;

drop sequence ph_board_seq;
create sequence ph_board_seq
   start with 1
   increment by 1 
   nocache
   nocycle;
   
insert into ph_boardtype values (ph_boardtype_seq.nextval,'KT 이벤트');
insert into ph_boardtype values (ph_boardtype_seq.nextval,'LGU+ 이벤트');
insert into ph_boardtype values (ph_boardtype_seq.nextval,'SKT 이벤트');

insert into ph_boardtype values (ph_boardtype_seq.nextval,'공지사항');
insert into ph_boardtype values (ph_boardtype_seq.nextval,'자유게시판');

insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','csa519');
