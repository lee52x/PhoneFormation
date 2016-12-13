select * from ph_slide
update ph_slide set state=1, path='123'
insert into ph_slide values(3,'/resources/upload/slide1.jpg')

--------------------------------�湮�ڼ� ���̺�
create table ph_visit(
v_date date
)

--�ΰ��߰� ���̺�
select *from ph_client
drop table ph_client;
create table ph_client(
	num number(10) primary key,
	path varchar2(300)
)
insert into ph_client(ph_client_seq.nextval,'/resources/slider_1_bg.jpg')

create sequence ph_client_seq
start with 1
increment by 1
nocache
nocycle;

--���ν����̵� ���̺�
drop table ph_slide;
create table ph_slide(
	state number(2) primary key,
	path varchar2(500)
)
select *from ph_slide
insert into ph_slide values(1,'/resources/slider_1_bg.jpg')
insert into ph_slide values(2,'/resources/slider_1_bg.jpg')
insert into ph_slide values(3,'/resources/slider_1_bg.jpg')

--������ �� ���̺� --
select*from ph_admin
drop table ph_admin;
create table ph_admin(
num number(5) primary key,
money number(20),
rdate date,
state number(5)
)
--������ �� ���̺� ������--
drop sequence ph_admin_seq;
create sequence ph_admin_seq
start with 1
increment by 1
nocache
nocycle;


--ȸ�� ���̺��� �θ� --
drop table ph_business cascade constraints;
create table ph_business(
businessNum varchar(50) primary key,
companyName varchar(50),
leaderName varchar(50),
address varchar(50),
cash number(20) default 1000000
);
select*From ph_member;
drop table ph_member;
--ȸ�� ���̺�--
drop table ph_member cascade constraints;
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
);
--���������--
drop sequence ph_member_seq;
create sequence ph_member_seq
start with 1
increment by 1
nocache
nocycle;

--quote�Խ��� ���̺� --
drop table ph_quoteBoard;
create table ph_quoteBoard(
	no number(10) primary key,
	userid varchar2(50),
	username varchar2(50),
	tel varchar2(50),
	quote_price number(10),
	request_message varchar2(1000),
	bank_name varchar2(50),
	account_number varchar2(50),
	rdate date,
	power varchar2(50),
	glass varchar2(50),
	equipment varchar2(50),
	state number(10) default 0,
	manufacture varchar2(50),
	machine varchar2(50),
	capacity varchar2(50),
	howsend varchar2(50),
	address varchar2(50)
	
);
ALTER TABLE ph_quoteBoard ADD constraint ph_quoteBoardforeign_fk foreign key(userid) references ph_member(userid) on delete cascade;



insert into PH_QUOTEBOARD values(9,'qweqwe','������','010-3333-0619',897000,'�׽�Ʈ','����','1231234',sysdate,'�۵�','�⽺����','�⽺����',0,'�Ｚ����','Galaxy S7 edge Olympic Games Limited Edition','32GB');
insert into PURCHASE_REQUEST values(1,'asdasd',9,2);

delete from ph_quoteBoard where no=9;

--quote ������ --
drop sequence ph_quoteBoard_seq;
create sequence ph_quoteBoard_seq
	start with 1
	increment by 1 
	nocache
	nocycle;
	
	
--�߰����  ���̺�---
select*From purchase_request;
drop table purchase_request;
	create table purchase_request(
		purchaseNum number(2) primary key,
		userid varchar2(50),  
		no number(10),
		state number(5),
		completeId varchar2(50) default '����'
	);

	select *from purchase_request
	select*from ph_quoteBoard 
	
ALTER TABLE purchase_request ADD constraint purchase_requestforeign_fk foreign key(no) references ph_quoteBoard(no) on delete cascade;
--ALTER TABLE purchase_request ADD constraint purchase_requestforeign_fk foreign key(no) references ph_quoteBoard(no);
--alter table purchase_request drop constraint purchase_requestforeign_fk;
	
---�߰���� ������---
	drop sequence purchase_request_seq;
	create sequence purchase_request_seq
	start with 1
	increment by 1 
	nocache
	nocycle;

--�������̺�--
drop table ph_repair;
create table ph_repair(
	name varchar2(100),
	glass number(10),
	backcover number(10),
	crome number(10),
	pan number(10),
	scratch number(10),
	powerbutton number(10),
	homebutton number(10),
	sound number(10),
	camera number(10),
	wifi number(10),
	charge number(10),
	battery number(10),
	sensor number(10),
	afterimage number(10),
	lcd number(10),
	foreign key(name) references ph_phone(name)
)
select*from ph_repair
insert into ph_repair values('Galaxy S7',120000,50000,20000,20000,30000,50000,50000,70000,100000,100000,50000,50000,20000,20000,30000)

drop table ph_repair
select*from ph_repair

 --�����Խ��� ���̺�--
 select*from ph_repairBoard;
 drop table ph_repairBoard;
 create table ph_repairBoard(
 	no number(10) primary key,
	userid varchar2(50),
	username varchar2(50),
	tel varchar2(50),
	repair_price number(10),
	request_message varchar2(1000),
	bank_name varchar2(50),
	account_number varchar2(50),
	rdate date,
	state number(10) default 0,
	machine varchar2(50),
	machineState varchar2(200),
	howsend varchar2(50),
	address varchar2(50)

 )
 ALTER TABLE ph_repairBoard ADD constraint ph_repairBoardforeign_fk foreign key(userid) references ph_member(userid) on delete cascade;
 select *from ph_repairBoard
 
 ---�����Խ��� ������--
 drop sequence ph_repairBoard_seq;
create sequence ph_repairBoard_seq
	start with 1
	increment by 1 
	nocache
	nocycle;
 
 
--��������  ���̺�---
	select * from repair_request

	drop table repair_request;
	create table repair_request(
		repairNum number(2) primary key,
		userid varchar2(50),  
		no number(10),
		state number(5)
	)
 ALTER TABLE repair_request ADD constraint repair_requestforeign_fk foreign key(no) references ph_repairBoard(no) on delete cascade;

 
---�������� ������---
	drop sequence repair_request_seq;
	create sequence repair_request_seq
	start with 1
	increment by 1 
	nocache
	nocycle;


	
	
	
	
	select*from ph_phone
	select*from ph_capacity
	
	
	
	
--�ڵ��� ����, �ڵ�����, �ڵ�������, �������, �����
drop table ph_phone;
create table ph_phone(
	no number primary key,
	name varchar2(100) unique,
	image LONG not null,
	manufacture varchar2(15) not null,
	release_date varchar2(30) not null
);
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge', '/resources/images/phone/GalaxyS7edge_ȭ��Ʈ��.png', 'samsung', '2016��11��');

drop table ph_capacity;
select*from ph_phone;
select*from ph_capacity
create table ph_capacity( --�ڵ��� �뷮
	no number,
	capacity varchar2(15) not null,
	release_price number not null, --���
	foreign key(no) references ph_phone(no),
	primary key(no, capacity)
);




insert into ph_capacity values (1, '32GB', 924000);
 		select name,capacity,release_price from ph_phone natur
 		where name=#{machine}
 		select * from ph_capacity 
 		where no=(select no from ph_phone where name='Galaxy S7 edge')


--�ڵ��� ���� ��������--
 		select * from ph_phone
 			where manufacture=#{manufacture}

 		select * from ph_phone
 			where manufacture='samsung'
 			
 			
 					select *from ph_repairBoard order by no desc
 					
 					
 					select*from ph_business
 					
 					select completeId from purchase_request where no=40
 					
 					select*from PH_BUSINESS
 					select*from ph_member
 					
 					select*From PH_QUOTEBOARD
 					
 					select quote_price from ph_quoteboard where no=55
 		select *from ph_member			
 		select *from PH_BUSINESS
 		select *from ph_admin
 		update ph_business set cash=cash-3000
			where businessNum = (select businessNum from ph_member where userid='lgtelecom')
			
			--�߰��� ����--
			select sum(money) from` ph_admin where state=0 
			--������ ����--
			select sum(money) from ph_admin where state=1 
			
			
			select*from PH_REPAIRBOARD
		
			select repair_price from ph_repairboard where no=20
			
				select repair_price from ph_repairboard where no=#{no}
			
			select*from ph_admin
			
			select cnt(num) from ph_admin
			
			select count(*) from ph_admin where state=0
			select count(*) from ph_admin where state=1
			
			select*from PH_ADMIN
			
				select count(*) from ph_admin where state=0 and rdate=sysdate
				
			
			select*From ph_admin
			
			select count(*)
			from (select sysdate sd from dual) sys, ph_admin ph 
			where ph.state=0 and to_char(ph.rdate,'YYYYMMDD')=to_char(sys.sd,'YYYYMMDD')
			
			
			
			
			
			
			
						select sum(money)
			from (select sysdate sd from dual) sys, ph_admin ph 
			where ph.state=0 and to_char(ph.rdate,'YYYYMMDD')=to_char(sys.sd,'YYYYMMDD')
			
			
						select count(*) 
			from (select sysdate sd from dual) sys, ph_admin ph 
			where ph.state=1 and to_char(ph.rdate,'YYYYMMDD')=to_char(sys.sd,'YYYYMMDD')
			
			
						select sum(money)
			from (select sysdate sd from dual) sys, ph_admin ph 
			where ph.state=1 and to_char(ph.rdate,'YYYYMMDD')=to_char(sys.sd,'YYYYMMDD')
			
			insert into ph_visit values(sysdate)
			select*from PH_ADMIN
			select*from ph_visit
				insert into ph_visit values(sysdate)
			select sum(money)
			from (select sysdate sd from dual) sys, ph_admin ph 
			where ph.state=0 and to_char(ph.rdate,'YYYYMMDD')=to_char(sys.sd,'YYYYMMDD')
			
			insert into ph_visit values(sysdate)
			
			select count(*) from ph_visit
			
			select * from ph_business
			select count(*)
			from (select sysdate sd from dual) sys, ph_visit ph 
			where  to_char(ph.v_date,'YYYYMMDD')=to_char(sys.sd,'YYYYMMDD')
			
			select*from ph_repair
			select count(*) from ph_business