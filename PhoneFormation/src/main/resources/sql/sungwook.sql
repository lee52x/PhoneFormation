drop table ph_member;
create table ph_member(
userid varchar2(50) primary key,
userpwd varchar2(50) ,
username varchar2(50),
rdate varchar2(50) ,
birth varchar2(50),
gender varchar2(10),
email varchar2(50),
tel varchar2(50),
root number(20),
status number(20) 
);

select*from ph_member

		select count(*) from ph_member
			where userid='lee52x'