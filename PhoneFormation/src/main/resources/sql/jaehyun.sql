--board.sql
drop table ph_reply;
drop table ph_ono;
drop table ph_boardgood;
drop table ph_board;
drop table ph_boardtype;
select * from ph_board;
select * from ph_reply;
create table ph_boardtype(
	tno number primary key,
	title varchar2(50) not null
);

create table ph_board(
   bno number primary key,
   tno number,
   title varchar2(200) not null,
   content varchar2(1000) not null,
   image varchar2(200),
   replycnt number default 0,
   writer varchar2(50),
   regdate date default sysdate,
   viewcnt number default 0,
   goodcnt number default 0
);
ALTER TABLE ph_board ADD constraint ph_boardtnoforeign_fk foreign key(tno) references ph_boardtype(tno) on delete cascade;
ALTER TABLE ph_board ADD constraint ph_boardforeign_fk foreign key(writer) references ph_member(userid) on delete cascade;

create table ph_boardgood(
bno number,
userid varchar2(50),
primary key(bno,userid)
);
ALTER TABLE ph_boardgood ADD constraint ph_boardgoodbnoforeign_fk foreign key(bno) references ph_board(bno) on delete cascade;
ALTER TABLE ph_boardgood ADD constraint ph_boardgoodforeign_fk foreign key(userid) references ph_member(userid) on delete cascade;

drop sequence ph_boardgood_seq;
create sequence ph_boardgood_seq
   start with 1
   increment by 1 
   nocache
   nocycle;


create table ph_ono(
ono number primary key,
userid varchar2(50),
title varchar2(100)	not null,
category varchar2(30) not null,
content varchar2(100) not null,
image varchar2(500),
regdate date default sysdate,
answer varchar2(100),
answer_regdate date
);
ALTER TABLE ph_ono ADD constraint ph_onoforeign_fk foreign key(userid) references ph_member(userid) on delete cascade;

drop sequence ph_ono_seq;
create sequence ph_ono_seq
   start with 1
   increment by 1 
   nocache
   nocycle;
   
drop sequence ph_boardtype_seq;
create sequence ph_boardtype_seq
   start with 1
   increment by 1 
   nocache
   nocycle;

create table ph_reply(
   rno         number primary key,
   bno        number,
   replytext   varchar2(1000) not null,
   replyer      varchar2(50) not null,
   regdate     date default sysdate
);
ALTER TABLE ph_reply ADD constraint ph_replybnoforeign_fk foreign key(bno) references ph_board(bno) on delete cascade;
ALTER TABLE ph_reply ADD constraint ph_replyforeign_fk foreign key(replyer) references ph_member(userid) on delete cascade;


drop sequence ph_board_seq;
create sequence ph_board_seq
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


   
insert into ph_boardtype values (1,'KT 이벤트');
insert into ph_boardtype values (2,'LGU+ 이벤트');
insert into ph_boardtype values (3,'SKT 이벤트');

insert into ph_boardtype values (4,'공지사항');
insert into ph_boardtype values (5,'자유게시판');

insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
insert into ph_board(bno,tno,title,content,writer) values(ph_board_seq.nextval,4,'테스트','테스트내용','qweqwe');
