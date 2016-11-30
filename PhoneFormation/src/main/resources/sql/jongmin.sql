
<!--business table -->
drop table ph_business;
create table ph_business(
businessNum varchar(50) primary key,
companyName varchar(50),
leaderName varchar(50),
address varchar(50)
);

drop table ph_member;
<!--member table->
create table ph_member(
memberno number(10) primary key,
userid varchar2(50) unique,
userpwd varchar2(50) ,
username varchar2(50),
birth varchar2(50),
gender varchar2(10),
email varchar2(50),
rdate Date ,
tel varchar2(50),
root number(20),
businessNum varchar(50),
foreign key(businessNum)  references ph_business(businessNum)
)

<!--member seq-->
create sequence ph_member_seq
start with 1
increment by 1
nocache
nocycle



--ono and ono 

drop table ph_ono;
create table ph_ono(
ono number primary key,
userid varchar2(50),
title varchar2(100)	not null,
category varchar2(30) not null,
content varchar2(100) not null,
image varchar2(500),
regdate date default sysdate,
answer varchar2(100),
answer_regdate date,
foreign key(userid) REFERENCES ph_member(userid)
);

drop sequence ph_ono_seq;
create sequence ph_ono_seq
   start with 1
   increment by 1 
   nocache
   nocycle;


select*from ph_ono;
insert into ph_ono(ono,userid,title,categori,content,image_path) values('1','qweqwe','제목','카테고리','내용','이미지');
insert into ph_ono(ono,userid,title,categori,content,image_path) values('2','qweqwe','제목','카테고리','내용','이미지');
insert into ph_ono(ono,userid,title,categori,content,image_path) values('3','qweqwe','제목','카테고리','내용','이미지');
insert into ph_ono(ono,userid,title,categori,content,image_path) values('4','qweqwe','제목','카테고리','내용','이미지');
update PH_ONO set answer='답변테스트',answer_regdate=sysdate where userid='qweqwe';


select * from ph_member;
select * from ph_business;

insert into ph_member 
		values(ph_member_seq.nextval,'asdasd','123123','이단형','2002-12-12','남자','asdasd@naver.com',sysdate,'010-1234-4567','3','123-12-23123');
insert into ph_business
		values('123-12-23123','코스타','이단형','가산');




insert into ph_member values('qweqwe3','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe4','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe5','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqw6','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe7','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe8','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe9','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe10','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe11','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe12','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe13','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe14','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe15','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe16','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe17','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe18','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe19','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe20','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe21','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe22','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe23','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe24','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe25','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe26','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe27','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');
insert into ph_member values('qweqwe28','123123','papapap',sysdate,'1992/10/10','남자','qweas@qwerr.com','010-1234-4567','3','1');




 select memberno,userid,userpwd,username,birth,gender,email,rdate,tel,root,businessNum from ph_member
			where businessnum is not NULL;











