drop table ph_phone;
drop table ph_color;
drop table ph_capacity;

drop table Sspec_processor;
drop table Sspec_processor_value;
drop table Sspec_display;
drop table Sspec_display_value;
drop table Sspec_camera;
drop table Sspec_camera_value;
drop table Sspec_memory;
drop table Sspec_memory_value;
drop table Sspec_network;
drop table Sspec_network_value;
drop table Sspec_connect;
drop table Sspec_connect_value;
drop table Sspec_specifications;
drop table Sspec_specifications_value;
drop table Sspec_battery;
drop table Sspec_battery_value;
drop table Sspec_audio;
drop table Sspec_audio_value;
drop table Sspec_service;
drop table Sspec_service_value;

drop sequence ph_phone_seq;
create sequence ph_phone_seq
	start with 1
	increment by 1
	nocycle
	nocache;


--핸드폰 정보, 핸드폰명, 핸드폰사진, 제조사명, 출고일
create table ph_phone(
	no number primary key,
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


create table ph_color( --핸드폰 색상
	name varchar2(100),
	color varchar2(30) not null,
	image LONG not null,
	foreign key(name) references ph_phone(name)
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

--삼성전자스펙

--프로세서

create table Sspec_processor(
	name varchar2(100) primary key,
	기능1 varchar2(50),
	기능2 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_processor values('Galaxy S7 edge Olympic Games Limited Edition', 'CPU속도', 'CPU종류');

create table Sspec_processor_value(
	name varchar2(100) primary key,
	값1 varchar2(50),
	값2 varchar2(50),
	foreign key(name) references ph_phone(name)
);

--디스플레이
insert into Sspec_processor_value values('Galaxy S7 edge Olympic Games Limited Edition', 's.1GHz, 1.5GHz', 'Octa-Core');

create table Sspec_display(
	name varchar2(100) primary key,
	기능1 varchar2(50),
	기능2 varchar2(50),
	기능3 varchar2(50),
	기능4 varchar2(50),
	기능5 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_display values ('Galaxy S7 edge Olympic Games Limited Edition', '크기(Main)', '해상도(Main)', '종류(Main)', '색심도(Main)', 'S펜 지원');

create table Sspec_display_value(
	name varchar2(100) primary key,
	값1 varchar2(50),
	값2 varchar2(50),
	값3 varchar2(50),
	값4 varchar2(50),
	값5 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_display_value values ('Galaxy S7 edge Olympic Games Limited Edition','139.5mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '아니오');

--카메라
create table Sspec_camera(
	name varchar2(100) primary key,
	기능1 varchar2(50),
	기능2 varchar2(50),
	기능3 varchar2(50),
	기능4 varchar2(50),
	기능5 varchar2(50),
	기능6 varchar2(50),
	기능7 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_camera values ('Galaxy S7 edge Olympic Games Limited Edition','동영상 녹화 해상도','메인 카메라 - 화소','메인 카메라 - 조리개 값','전면 카메라 - 화소','전면 카메라 - 조리개 값','메인 카메라 - 플래쉬', '메인 카메라 - 오토 포커스');

create table Sspec_camera_value(
	name varchar2(100) primary key,
	값1 varchar2(50),
	값2 varchar2(50),
	값3 varchar2(50),
	값4 varchar2(50),
	값5 varchar2(50),
	값6 varchar2(50),
	값7 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_camera_value values ('Galaxy S7 edge Olympic Games Limited Edition','UHD 4K (3840 x 2160) @30fps','Dual Pixel 12.0 MP','f/1.7','CMOS 5.0 MP','f/1.7','예', '예');

--메모리

create table Sspec_memory(
	name varchar2(100) primary key,
	기능1 varchar2(50),
	기능2 varchar2(50),
	기능3 varchar2(50),
	기능4 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_memory values ('Galaxy S7 edge Olympic Games Limited Edition','Ram Size(GB)','ROM Size(GB)','사용할 수 있는 메모리','외장 메모리 지원');

create table Sspec_memory_value(
	name varchar2(100) primary key,
	값1 varchar2(50),
	값2 varchar2(50),
	값3 varchar2(50),
	값4 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_memory_value values ('Galaxy S7 edge Olympic Games Limited Edition','4GB','32GB','23.5GB','MicroSD (최대256GB)');

--네트워크

create table Sspec_network(
	name varchar2(100) primary key,
	기능1 varchar2(50),
	기능2 varchar2(50),
	기능3 varchar2(50),
	기능4 varchar2(50),
	기능5 varchar2(50),
	기능6 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_network values ('Galaxy S7 edge Olympic Games Limited Edition','Type of SIM Slot','2G GSM','3G UMTS','3G TD-SCDMA','4G FDD LTE','4G TDD LTE');

create table Sspec_network_value(
	name varchar2(100) primary key,
	값1 varchar2(50),
	값2 varchar2(50),
	값3 varchar2(50),
	값4 varchar2(50),
	값5 varchar2(200),
	값6 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_network_value values ('Galaxy S7 edge Olympic Games Limited Edition','SIM 1 + MicroSD','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','B34(2010), B39(1880)','B1(2100), B2(1900), B3(1800), B4(AWS), B5(850), B7(2600), B8(900), B12(700), B17(700), B18(800), B19(800), B20(800), B25(1900), B26(800), B28(700)','B38(2600), B39(1900), B40(2300), B41(2500)');

--연결
create table Sspec_connect(
	name varchar2(100) primary key,
	기능1 varchar2(50),
	기능2 varchar2(50),
	기능3 varchar2(50),
	기능4 varchar2(50),
	기능5 varchar2(50),
	기능6 varchar2(50),
	기능7 varchar2(50),
	기능8 varchar2(50),
	기능9 varchar2(50),
	기능10 varchar2(50),
	기능11 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_connect values ('Galaxy S7 edge Olympic Games Limited Edition','ANT+','USB 버전','위치 기술','이어잭','MHL','Wi-Fi','Wi-Fi Direct','블루투스 버전','NFC','블루투스 프로파일','PC싱크');

create table Sspec_connect_value(
	name varchar2(100) primary key,
	값1 varchar2(50),
	값2 varchar2(50),
	값3 varchar2(50),
	값4 varchar2(50),
	값5 varchar2(50),
	값6 varchar2(50),
	값7 varchar2(50),
	값8 varchar2(50),
	값9 varchar2(50),
	값10 varchar2(100),
	값11 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_connect_value values ('Galaxy S7 edge Olympic Games Limited Edition','예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO','예','Bluetooth v4.2','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');

--운영체제, 기본사양, 센서, 외관사양

create table Sspec_specifications(
	name varchar2(100) primary key,
	기능1 varchar2(50),
	기능2 varchar2(50),
	기능3 varchar2(50),
	기능4 varchar2(50),
	기능5 varchar2(50),
	기능6 varchar2(50),
	기능7 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_specifications values ('Galaxy S7 edge Olympic Games Limited Edition','ANT+','운영체제','색상','형태','크기(세로X가로X두께, mm)', '무게(g)','센서');

create table Sspec_specifications_value(
	name varchar2(100) primary key,
	값1 varchar2(50),
	값2 varchar2(50),
	값3 varchar2(50),
	값4 varchar2(50),
	값5 varchar2(50),
	값6 varchar2(50),
	값7 varchar2(200),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_specifications_value values ('Galaxy S7 edge Olympic Games Limited Edition','예','Android','블랙 오닉스','터치 바','150.9 x 72.6 x 7.7','157','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 근접 센서, RGB 광 센서');

--배터리

create table Sspec_battery(
	name varchar2(100) primary key,
	기능1 varchar2(50),
	기능2 varchar2(50),
	기능3 varchar2(50),
	기능4 varchar2(50),
	기능5 varchar2(50),
	기능6 varchar2(50),
	기능7 varchar2(50),
	기능8 varchar2(200),
	기능9 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_battery values ('Galaxy S7 edge Olympic Games Limited Edition','인터넷 사용 시간(3G)(Hours)','인터넷 사용 시간(LTE)(Hours)','인터넷 사용시간(Wi-Fi)(Hours)','비디오 재생 시간(Hours)','표준 배터리 용량(mAh)', '교체 가능','오디오 재생 시간(Hours)','오디오 재생 시간(Hours, Always OnDisplay Off)','연속 통화시간(3G WCDMA)(Hours)');

create table Sspec_battery_value(
	name varchar2(100) primary key,
	값1 varchar2(50),
	값2 varchar2(50),
	값3 varchar2(50),
	값4 varchar2(50),
	값5 varchar2(50),
	값6 varchar2(50),
	값7 varchar2(50),
	값8 varchar2(50),
	값9 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_battery_value values ('Galaxy S7 edge Olympic Games Limited Edition','최대12','최대15','최대16','최대18','3600','아니오','최대62','최대81','최대27');

--오디오/비디오

create table Sspec_audio(
	name varchar2(100) primary key,
	기능1 varchar2(50),
	기능2 varchar2(50),
	기능3 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_audio values ('Galaxy S7 edge Olympic Games Limited Edition','동영상 지원 포맷','동영상 지원 해상도','오디오 지원 포맷');

create table Sspec_audio_value(
	name varchar2(100) primary key,
	값1 varchar2(100),
	값2 varchar2(100),
	값3 varchar2(100),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_audio_value values ('Galaxy S7 edge Olympic Games Limited Edition','MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @60fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA');

--서비스

create table Sspec_service(
	name varchar2(100) primary key,
	기능1 varchar2(50),
	기능2 varchar2(50),
	기능3 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_service values ('Galaxy S7 edge Olympic Games Limited Edition','Gear 서포트','S보이스','모바일TV');

create table Sspec_service_value(
	name varchar2(100) primary key,
	값1 varchar2(200),
	값2 varchar2(50),
	값3 varchar2(50),
	foreign key(name) references ph_phone(name)
);

insert into Sspec_service_value values ('Galaxy S7 edge Olympic Games Limited Edition','기어 서클(매니저 서포트), 기어 핏, 기어1, 기어2, 기어2 네오, 기어 S, 기어 S2, 기어 VR','예','예');






		select *
		from ph_phone
		where manufacture='삼성전자'
		order by no desc;