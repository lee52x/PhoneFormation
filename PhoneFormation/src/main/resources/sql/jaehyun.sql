--board.sql
drop table phone_reply;
drop table phone_board;
drop table phone_boardtype;

create table phone_boardtype(
	tno number primary key,
	title varchar2(50) not null
);
create table phone_board(
   bno number primary key,
   tno number references phone_boardtype(tno),
   title varchar2(200) not null,
   content varchar2(1000) not null,
   image varchar2(200),
   writer varchar2(50) not null,
   regdate date default sysdate,
   viewcnt number default 0
);
create table phone_reply(
   rno         number primary key,
   bno        number references phone_board(bno),
   replytext   varchar2(1000) not null,
   replyer      varchar2(50) not null,
   regdate     date default sysdate,
   updatedate    date default sysdate
);

drop sequence phone_boardtype_seq;
create sequence phone_boardtype_seq
   start with 1
   increment by 1 
   nocache
   nocycle;

drop sequence phone_reply_seq;
create sequence phone_reply_seq
start with 1
increment by 1 
nocache
nocycle;

drop sequence phone_board_seq;
create sequence phone_board_seq
   start with 1
   increment by 1 
   nocache
   nocycle;
   
insert into phone_boardtype values (phone_boardtype_seq.nextval,'이벤트');
insert into phone_boardtype values (phone_boardtype_seq.nextval,'공지사항');
insert into phone_boardtype values (phone_boardtype_seq.nextval,'자유게시판');