
--business table -->
drop table ph_business;
create table ph_business(
businessNum varchar(50) primary key,
companyName varchar(50),
leaderName varchar(50),
address varchar(50)
);

drop table ph_member;
--member table-
create table ph_member(
memberno number(10) primary key,
userid varchar2(50) unique,
userpwd varchar2(50),
username varchar2(50),
birth varchar2(50),
gender varchar2(10),
email varchar2(50),
rdate Date,
tel varchar2(50),
root number(20),
businessNum varchar(50),
foreign key(businessNum) references ph_business(businessNum)
)

--member seq--
drop sequence ph_member_seq;
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
answer_regdate date
)
ALTER TABLE ph_ono ADD constraint ph_onoforeign_fk foreign key(userid) references ph_member(userid) on delete cascade;

 
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

  insert into ph_repair values('Galaxy S7 edge',1000,1000,1000,1000,1000,100,1000
		,1000,100,1000,2222,2222,555,5555,77777);


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





--quote게시판 테이블 --
select *from ph_quoteBoard;

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
	foreign key(userid) references ph_member(userid)
);

--quote 시퀀스 --
drop sequence ph_quoteBoard_seq;
create sequence ph_quoteBoard_seq
	start with 1
	increment by 1 
	nocache
	nocycle;
 
	select r.no,m.userid,r.purchaseNum,m.tel,m.businessNum,b.companyName,b.address
	from ph_business b,ph_member m,purchase_request r, PH_QUOTEBOARD q
	where b.businessNum in((select businessNum from ph_member where m.userid in ((select a.userid from purchase_request a, PH_QUOTEBOARD b where a.no=5 and b.no=5 and a.no=b.no and a.state=3))))
	and r.userid = m.userid and m.businessNum = b.businessNum and r.no = q.no and r.no=5;
	
	
	select r.no,m.userid,r.purchaseNum,m.tel,m.businessNum,b.companyName,b.address
	from ph_business b,ph_member m,purchase_request r, PH_QUOTEBOARD q
	where b.businessNum in((select businessNum from ph_member where m.userid in ((select a.userid from purchase_request a, PH_QUOTEBOARD b where a.no=#{no}and b.no=#{no} and a.no=b.no and state=2))))
	and r.userid = m.userid and m.businessNum = b.businessNum and r.no = q.no and r.no=#{no};
	
	select r.userid from purchase_request r, PH_QUOTEBOARD b where r.no=5 and r.no=b.no;
	
	select businessNum from ph_member where userid in ((select a.userid from purchase_request a, PH_QUOTEBOARD b where a.no=5 and b.no=5 and a.no=b.no));
	
	
	select * from purchase_request;
	purchase_request
	private int purchaseNum;
	private String userid;
	private int no;
	
	
	ph_member
	private String tel;
	
	ph_business
	private String businessNum;
	private String companyName;
	private String address;
	
	
	PH_QUOTEBOARD
	no
	
	
--중고매입 요청 목록 테이블---
drop table purchase_request;
create table purchase_request(
		purchaseNum number(2) primary key,
		userid varchar2(50),  
		no number(10) references ph_quoteBoard(no),
		state number(5)
	)
drop sequence purchase_request_seq;
create sequence purchase_request_seq
	start with 1
	increment by 1 
	nocache
	nocycle;
	

drop table ph_phone;
drop table ph_color;
drop table ph_capacity;

drop sequence ph_phone_seq;
create sequence ph_phone_seq
	start with 1
	increment by 1
	nocycle
	nocache;

	
--핸드폰 정보, 핸드폰명, 핸드폰사진, 제조사명, 출고일
drop table ph_phone;
create table ph_phone(
	id number primary key,
	name varchar2(100) unique,
	image LONG not null,
	manufacture varchar2(15) not null,
	release_date varchar2(30) not null
);


--삼성전자
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge', '/resources/images/phone/GalaxyS7edge_화이트펄.png', '삼성전자', '2016년11월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge Olympic Games Limited Edition', '/resources/images/phone/GalaxyS7edgeOlympic_블랙.png', '삼성전자', '2016년07월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge Injustice Edition', '/resources/images/phone/GalaxyS7edgeInjustice_블랙.png', '삼성전자', '2016년06월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7', '/resources/images/phone/GalaxyS7_블랙오닉스.png', '삼성전자', '2016년07월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note5', '/resources/images/phone/Galaxynote5_골드플래티넘.png', '삼성전자', '2015년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6 edge plus', '/resources/images/phone/GalaxyS6_골드플래티넘.png', '삼성전자', '2015년08월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6 edge', '/resources/images/phone/GalaxyS6edge_골드플래티넘.png', '삼성전자', '2015년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6', '/resources/images/phone/GalaxyS6_화이트펄.png', '삼성전자', '2015년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A8(2016)', '/resources/images/phone/GalaxyA8(2016)_실버.png', '삼성전자', '2016년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A3(2016)', '/resources/images/phone/GalaxyA3(2016)_블랙.png', '삼성전자', '2016년03월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A5(2016)', '/resources/images/phone/GalaxyA5(2016)_블랙.png', '삼성전자', '2016년01월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A7(2016)', '/resources/images/phone/GalaxyA7(2016)_블랙.png', '삼성전자', '2016년01월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J3(2016)', '/resources/images/phone/GalaxyJ3(2016)_화이트.png', '삼성전자', '2016년05월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J5(2016)', '/resources/images/phone/GalaxyJ5(2016)_블랙.png', '삼성전자', '2016년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J7(2016)', '/resources/images/phone/GalaxyJ7(2016)_블랙.png', '삼성전자', '2016년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note edge', '/resources/images/phone/GalaxynoteEdge_화이트.png', '삼성전자', '2014년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note4 S-LTE', '/resources/images/phone/Galaxynote4SLTE_화이트.png', '삼성전자', '2015년01월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note4', '/resources/images/phone/Galaxynote4_화이트.png', '삼성전자', '2014년09월');

--애플
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 7', '/resources/images/phone/iPhone7_실버.png', '애플', '2016년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 7 plus', '/resources/images/phone/iPhone7Plus_실버.png', '애플', '2016년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6s', '/resources/images/phone/iPhone6s_실버.png', '애플', '2015년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6s Plus', '/resources/images/phone/iPhone6sPlus_실버.png', '애플', '2015년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6 Plus', '/resources/images/phone/iPhone6Plus_실버.png', '애플', '2014년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhoneSE', '/resources/images/phone/iPhoneSE_로즈골드.png', '애플', '2016년05월');

--LG전자
insert into ph_phone values (ph_phone_seq.nextval, 'V20', '/resources/images/phone/V20_실버.png', 'LG전자', '2016년09월');
insert into ph_phone values (ph_phone_seq.nextval, 'V10', '/resources/images/phone/V10_럭스화이트.png', 'LG전자', '2015년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'G5', '/resources/images/phone/G5_실버.png', 'LG전자', '2016년03월');
insert into ph_phone values (ph_phone_seq.nextval, 'G4', '/resources/images/phone/G4_세라믹화이트.png', 'LG전자', '2015년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'GStylo', '/resources/images/phone/GStylo_화이트.png', 'LG전자', '2015년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'GFlex2', '/resources/images/phone/GFlex2_플래티넘실버.png', 'LG전자', '2015년01월');
insert into ph_phone values (ph_phone_seq.nextval, 'G3Screen', '/resources/images/phone/G3Screen_화이트.png', 'LG전자', '2014년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'G3A', '/resources/images/phone/G3A_화이트.png', 'LG전자', '2014년08월');
insert into ph_phone values (ph_phone_seq.nextval, 'G3Cat6', '/resources/images/phone/G3Cat6_실크화이트.png', 'LG전자', '2014년08월');
insert into ph_phone values (ph_phone_seq.nextval, 'G3', '/resources/images/phone/G3_실크화이트.png', 'LG전자', '2014년05월');
insert into ph_phone values (ph_phone_seq.nextval, 'GPro', '/resources/images/phone/G3_실크화이트.png', 'LG전자', '2012년12월');


create table ph_color( --핸드폰 색상
	name varchar2(100) not null,
	color varchar2(30) not null,
	image LONG not null
);

--삼성전자
insert into ph_color values ('Galaxy S7 edge', '화이트펄', '/resources/images/phone/GalaxyS7edge_화이트펄.png');
insert into ph_color values ('Galaxy S7 edge', '블루코랄', '/resources/images/phone/GalaxyS7edge_블루코랄.png');
insert into ph_color values ('Galaxy S7 edge', '블랙오닉스', '/resources/images/phone/GalaxyS7edge_블랙오닉스.png');
insert into ph_color values ('Galaxy S7 edge', '골드플래티넘', '/resources/images/phone/GalaxyS7edge_골드플래티넘.png');
insert into ph_color values ('Galaxy S7 edge', '실버티타늄', '/resources/images/phone/GalaxyS7edge_실버티타늄.png');
insert into ph_color values ('Galaxy S7 edge', '핑크골드', '/resources/images/phone/GalaxyS7edge_핑크골드.png');

insert into ph_color values ('Galaxy S7 edge Olympic Games Limited Edition', '블랙', '/resources/images/phone/GalaxyS7edgeOlympic_블랙.png');

insert into ph_color values ('Galaxy S7 edge Injustice Edition', '블랙', '/resources/images/phone/GalaxyS7edgeInjustice_블랙.png');

insert into ph_color values ('Galaxy S7', '블랙오닉스', '/resources/images/phone/GalaxyS7_블랙오닉스.png');
insert into ph_color values ('Galaxy S7', '화이트펄', '/resources/images/phone/GalaxyS7_화이트펄.png');
insert into ph_color values ('Galaxy S7', '실버티타늄', '/resources/images/phone/GalaxyS7_실버티타늄.png');
insert into ph_color values ('Galaxy S7', '골드플래티넘', '/resources/images/phone/GalaxyS7_골드플래티넘.png');
insert into ph_color values ('Galaxy S7', '핑크골드', '/resources/images/phone/GalaxyS7_핑크골드.png');
insert into ph_color values ('Galaxy S7', '핑크블로섬', '/resources/images/phone/GalaxyS7_핑크블로섬.png');

insert into ph_color values ('Galaxy note5', '골드플래티넘', '/resources/images/phone/Galaxynote5_골드플래티넘.png');
insert into ph_color values ('Galaxy note5', '블랙사파이어', '/resources/images/phone/Galaxynote5_블랙사파이어.png');
insert into ph_color values ('Galaxy note5', '실버티타늄', '/resources/images/phone/Galaxynote5_실버티타늄.png');
insert into ph_color values ('Galaxy note5', '화이트펄', '/resources/images/phone/Galaxynote5_화이트펄.png');
insert into ph_color values ('Galaxy note5', '핑크골드', '/resources/images/phone/Galaxynote5_핑크골드.png');

insert into ph_color values ('Galaxy S6 edge plus', '골드플래티넘', '/resources/images/phone/GalaxyS6edgePlus_골드플래티넘.png');
insert into ph_color values ('Galaxy S6 edge plus', '블랙사파이어', '/resources/images/phone/GalaxyS6edgePlus_블랙사파이어.png');

insert into ph_color values ('Galaxy S6 edge', '골드플래티넘', '/resources/images/phone/GalaxyS6edge_골드플래티넘.png');
insert into ph_color values ('Galaxy S6 edge', '화이트펄', '/resources/images/phone/GalaxyS6edge_화이트펄.png');
insert into ph_color values ('Galaxy S6 edge', '블랙사파이어', '/resources/images/phone/GalaxyS6edge_블랙사파이어.png');
insert into ph_color values ('Galaxy S6 edge', '그린에메랄드', '/resources/images/phone/GalaxyS6edge_그린에메랄드.png');

insert into ph_color values ('Galaxy S6', '화이트펄', '/resources/images/phone/GalaxyS6_화이트펄.png');
insert into ph_color values ('Galaxy S6', '블랙사파이어', '/resources/images/phone/GalaxyS6_블랙사파이어.png');
insert into ph_color values ('Galaxy S6', '골드플래티넘', '/resources/images/phone/GalaxyS6_골드플래티넘.png');
insert into ph_color values ('Galaxy S6', '블루사파이어', '/resources/images/phone/GalaxyS6_블루사파이어.png');

insert into ph_color values ('Galaxy A8(2016)', '실버', '/resources/images/phone/GalaxyA8(2016)_실버.png');
insert into ph_color values ('Galaxy A8(2016)', '핑크골드', '/resources/images/phone/GalaxyA8(2016)_핑크골드.png');
insert into ph_color values ('Galaxy A8(2016)', '화이트블루', '/resources/images/phone/GalaxyA8(2016)_화이트블루.png');

insert into ph_color values ('Galaxy A3(2016)', '블랙', '/resources/images/phone/GalaxyA3(2016)_블랙.png');
insert into ph_color values ('Galaxy A3(2016)', '화이트', '/resources/images/phone/GalaxyA3(2016)_화이트.png');
insert into ph_color values ('Galaxy A3(2016)', '마샨핑크', '/resources/images/phone/GalaxyA3(2016)_마샨핑크.png');

insert into ph_color values ('Galaxy A5(2016)', '블랙', '/resources/images/phone/GalaxyA5(2016)_블랙.png');
insert into ph_color values ('Galaxy A5(2016)', '화이트', '/resources/images/phone/GalaxyA5(2016)_화이트.png');
insert into ph_color values ('Galaxy A5(2016)', '마샨핑크', '/resources/images/phone/GalaxyA5(2016)_마샨핑크.png');

insert into ph_color values ('Galaxy A7(2016)', '블랙', '/resources/images/phone/GalaxyA7(2016)_블랙.png');
insert into ph_color values ('Galaxy A7(2016)', '화이트', '/resources/images/phone/GalaxyA7(2016)_화이트.png');
insert into ph_color values ('Galaxy A7(2016)', '마샨핑크', '/resources/images/phone/GalaxyA7(2016)_마샨핑크.png');

insert into ph_color values ('Galaxy J3(2016)', '화이트', '/resources/images/phone/GalaxyJ3(2016)_화이트.png');

insert into ph_color values ('Galaxy J5(2016)', '블랙', '/resources/images/phone/GalaxyJ5(2016)_블랙.png');
insert into ph_color values ('Galaxy J5(2016)', '화이트', '/resources/images/phone/GalaxyJ5(2016)_화이트.png');

insert into ph_color values ('Galaxy J7(2016)', '골드', '/resources/images/phone/GalaxyJ7(2016)_골드.png');
insert into ph_color values ('Galaxy J7(2016)', '블랙', '/resources/images/phone/GalaxyJ7(2016)_블랙.png');

insert into ph_color values ('Galaxy note edge', '화이트', '/resources/images/phone/GalaxynoteEdge_화이트.png');
insert into ph_color values ('Galaxy note edge', '블랙', '/resources/images/phone/GalaxynoteEdge_블랙.png');

insert into ph_color values ('Galaxy note4 S-LTE', '화이트', '/resources/images/phone/Galaxynote4SLTE_화이트.png');
insert into ph_color values ('Galaxy note4 S-LTE', '블랙', '/resources/images/phone/Galaxynote4SLTE_블랙.png');
insert into ph_color values ('Galaxy note4 S-LTE', '실버', '/resources/images/phone/Galaxynote4SLTE_실버.png');
insert into ph_color values ('Galaxy note4 S-LTE', '핑크', '/resources/images/phone/Galaxynote4SLTE_핑크.png');
insert into ph_color values ('Galaxy note4 S-LTE', '레드', '/resources/images/phone/Galaxynote4SLTE_레드.png');

insert into ph_color values ('Galaxy note4', '화이트', '/resources/images/phone/Galaxynote4_화이트.png');
insert into ph_color values ('Galaxy note4', '블랙', '/resources/images/phone/Galaxynote4_블랙.png');
insert into ph_color values ('Galaxy note4', '골드', '/resources/images/phone/Galaxynote4_골드.png');
insert into ph_color values ('Galaxy note4', '핑크', '/resources/images/phone/Galaxynote4_핑크.png');
insert into ph_color values ('Galaxy note4', '레드', '/resources/images/phone/Galaxynote4_레드.png');

--애플
insert into ph_color values ('iPhone 7', '로즈골드', '/resources/images/phone/iPhone7_로드골드.png');
insert into ph_color values ('iPhone 7', '골드', '/resources/images/phone/iPhone7_골드.png');
insert into ph_color values ('iPhone 7', '실버', '/resources/images/phone/iPhone7_실버.png');
insert into ph_color values ('iPhone 7', '블랙', '/resources/images/phone/iPhone7_블랙.png');
insert into ph_color values ('iPhone 7', '제트블랙', '/resources/images/phone/iPhone7_제트블랙.png');

insert into ph_color values ('iPhone 7 plus', '로즈골드', '/resources/images/phone/iPhone7Plus_로즈골드.png');
insert into ph_color values ('iPhone 7 plus', '골드', '/resources/images/phone/iPhone7Plus_골드.png');
insert into ph_color values ('iPhone 7 plus', '실버', '/resources/images/phone/iPhone7Plus_실버.png');
insert into ph_color values ('iPhone 7 plus', '블랙', '/resources/images/phone/iPhone7Plus_블랙.png');
insert into ph_color values ('iPhone 7 plus', '제트블랙', '/resources/images/phone/iPhone7Plus_제트블랙.png');

insert into ph_color values ('iPhone 6s', '스페이스그레이', '/resources/images/phone/iPhone6s_스페이스그레이.png');
insert into ph_color values ('iPhone 6s', '실버', '/resources/images/phone/iPhone6s_실버.png');
insert into ph_color values ('iPhone 6s', '골드', '/resources/images/phone/iPhone6s_골드.png');
insert into ph_color values ('iPhone 6s', '로즈골드', '/resources/images/phone/iPhone6s_로즈골드.png');

insert into ph_color values ('iPhone 6s Plus', '스페이스그레이', '/resources/images/phone/iPhone6sPlus_스페이스그레이.png');
insert into ph_color values ('iPhone 6s Plus', '실버', '/resources/images/phone/iPhone6sPlus_실버.png');
insert into ph_color values ('iPhone 6s Plus', '골드', '/resources/images/phone/iPhone6sPlus_골드.png');
insert into ph_color values ('iPhone 6s Plus', '로즈골드', '/resources/images/phone/iPhone6sPlus_로즈골드.png');

insert into ph_color values ('iPhone 6 Plus', '골드', '/resources/images/phone/iPhone6Plus_골드.png');
insert into ph_color values ('iPhone 6 Plus', '스페이스그레이', '/resources/images/phone/iPhone6Plus_스페이스그레이.png');
insert into ph_color values ('iPhone 6 Plus', '실버', '/resources/images/phone/iPhone6Plus_실버.png');

insert into ph_color values ('iPhoneSE', '스페이스그레이', '/resources/images/phone/iPhoneSE_스페이스그레이.png');
insert into ph_color values ('iPhoneSE', '로즈골드', '/resources/images/phone/iPhoneSE_로즈골드.png');

--LG전자
insert into ph_color values ('V20', '티탄', '/resources/images/phone/V20_티탄.png');
insert into ph_color values ('V20', '실버', '/resources/images/phone/V20_실버.png');
insert into ph_color values ('V20', '핑크', '/resources/images/phone/V20_핑크.png');

insert into ph_color values ('V10', '럭스 화이트', '/resources/images/phone/V10_럭스화이트.png');
insert into ph_color values ('V10', '모던 베이지', '/resources/images/phone/V10_모던베이지.png');
insert into ph_color values ('V10', '오션 블루', '/resources/images/phone/V10_오션블루.png');

insert into ph_color values ('G5', '티탄', '/resources/images/phone/G5_티탄.png');
insert into ph_color values ('G5', '실버', '/resources/images/phone/G5_실버.png');
insert into ph_color values ('G5', '핑크', '/resources/images/phone/G5_핑크.png');
insert into ph_color values ('G5', '골드', '/resources/images/phone/G5_골드.png');

insert into ph_color values ('G4', '세라믹화이트', '/resources/images/phone/G4_세라믹화이트.png');
insert into ph_color values ('G4', '메탈릭그레이', '/resources/images/phone/G4_메탈릭그레이.png');
insert into ph_color values ('G4', '천연가죽브라운', '/resources/images/phone/G4_천연가죽브라운.png');
insert into ph_color values ('G4', '천연가죽블랙', '/resources/images/phone/G4_천연가죽블랙.png');

insert into ph_color values ('GStylo', '티탄', '/resources/images/phone/GStylo_티탄.png');
insert into ph_color values ('GStylo', '화이트', '/resources/images/phone/GStylo_화이트.png');

insert into ph_color values ('GFlex2', '플래티넘실버', '/resources/images/phone/GFlex2_플래티넘실버.png');
insert into ph_color values ('GFlex2', '플라멩고레드', '/resources/images/phone/GFlex2_플라멩고레드.png');

insert into ph_color values ('G3Screen', '화이트', '/resources/images/phone/G3Screen_화이트.png');
insert into ph_color values ('G3Screen', '블랙', '/resources/images/phone/G3Screen_블랙.png');

insert into ph_color values ('G3A', '티탄', '/resources/images/phone/G3A_티탄.png');
insert into ph_color values ('G3A', '화이트', '/resources/images/phone/G3A_화이트.png');

insert into ph_color values ('G3Cat6', '메탈릭블랙', '/resources/images/phone/G3Cat6_메탈릭블랙.png');
insert into ph_color values ('G3Cat6', '실크화이트', '/resources/images/phone/G3Cat6_실크화이트.png');
insert into ph_color values ('G3Cat6', '샤인골드', '/resources/images/phone/G3Cat6_샤인골드.png');
insert into ph_color values ('G3Cat6', '와인', '/resources/images/phone/G3Cat6_와인.png');
insert into ph_color values ('G3Cat6', '문바이올렛', '/resources/images/phone/G3Cat6_문바이올렛.png');

insert into ph_color values ('G3', '메탈릭블랙', '/resources/images/phone/G3_메탈릭블랙.png');
insert into ph_color values ('G3', '실크화이트', '/resources/images/phone/G3_실크화이트.png');
insert into ph_color values ('G3', '샤인골드', '/resources/images/phone/G3_샤인골드.png');

select*from ph_capacity;

drop table ph_capacity;
create table ph_capacity( --핸드폰 용량
	name varchar2(100),
	capacity varchar2(15) not null,
	release_price number not null, --출고가
	foreign key(name) references ph_phone(name)
);

--삼성전자
insert into ph_capacity values ('Galaxy S7 edge', '32GB', 924000);
insert into ph_capacity values ('Galaxy S7 edge', '64GB', 968000);
insert into ph_capacity values ('Galaxy S7 edge Olympic Games Limited Edition', '32GB', 1067000);
insert into ph_capacity values ('Galaxy S7 edge Injustice Edition', '32GB', 1199000);
insert into ph_capacity values ('Galaxy S7', '32GB', 836000);
insert into ph_capacity values ('Galaxy S7', '64GB', 880000);
insert into ph_capacity values ('Galaxy note5', '32GB', 899800);
insert into ph_capacity values ('Galaxy note5', '64GB', 965800);
insert into ph_capacity values ('Galaxy note5', '128GB', 999000);
insert into ph_capacity values ('Galaxy S6 edge plus', '32GB', 599500);
insert into ph_capacity values ('Galaxy S6 edge', '32GB', 735900);
insert into ph_capacity values ('Galaxy S6 edge', '64GB', 755700);
insert into ph_capacity values ('Galaxy S6', '32GB', 858000);
insert into ph_capacity values ('Galaxy S6', '64GB', 924000);
insert into ph_capacity values ('Galaxy A8(2016)', '32GB', 649000);
insert into ph_capacity values ('Galaxy A3(2016)', '16GB', 352000);
insert into ph_capacity values ('Galaxy A5(2016)', '16GB', 429000);
insert into ph_capacity values ('Galaxy A7(2016)', '16GB', 528000);
insert into ph_capacity values ('Galaxy J3(2016)', '8GB', 231000);
insert into ph_capacity values ('Galaxy J5(2016)', '16GB', 297000);
insert into ph_capacity values ('Galaxy J7(2016)', '16GB', 363000);
insert into ph_capacity values ('Galaxy note edge', '32GB', 1067000);
insert into ph_capacity values ('Galaxy note4 S-LTE', '32GB', 799700);
insert into ph_capacity values ('Galaxy note4', '32GB', 957000);

--애플
insert into ph_capacity values ('iPhone 7', '32GB', 869000);
insert into ph_capacity values ('iPhone 7', '128GB', 999900);
insert into ph_capacity values ('iPhone 7', '256GB', 1130800);
insert into ph_capacity values ('iPhone 7 plus', '32GB', 1021900);
insert into ph_capacity values ('iPhone 7 plus', '128GB', 1152800);
insert into ph_capacity values ('iPhone 7 plus', '256GB', 1283700);
insert into ph_capacity values ('iPhone 6s', '16GB', 869000);
insert into ph_capacity values ('iPhone 6s', '64GB', 999900);
insert into ph_capacity values ('iPhone 6s', '128GB', 1130800);
insert into ph_capacity values ('iPhone 6s Plus', '16GB', 999900);
insert into ph_capacity values ('iPhone 6s Plus', '64GB', 1130800);
insert into ph_capacity values ('iPhone 6s Plus', '128GB', 1261700);
insert into ph_capacity values ('iPhone 6 Plus', '16GB', 899800);
insert into ph_capacity values ('iPhone 6 Plus', '64GB', 1050600);
insert into ph_capacity values ('iPhoneSE', '16GB', 569800);
insert into ph_capacity values ('iPhoneSE', '64GB', 699600);

--LG전자
insert into ph_capacity values ('V20', '64GB', 899800);
insert into ph_capacity values ('V10', '64GB', 599500);
insert into ph_capacity values ('G5', '32GB', 699600);
insert into ph_capacity values ('G4', '32GB', 599500);
insert into ph_capacity values ('GStylo', '8GB', 517000);
insert into ph_capacity values ('GFlex2', '32GB', 899800);
insert into ph_capacity values ('G3Screen', '32GB', 550000);
insert into ph_capacity values ('G3A', '32GB', 451000);
insert into ph_capacity values ('G3Cat6', '32GB', 649000);
insert into ph_capacity values ('G3', '32GB', 499400);
insert into ph_capacity values ('GPro', '32GB', 320000);

