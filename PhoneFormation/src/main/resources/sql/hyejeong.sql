drop table ph_color;
drop table ph_capacity;

drop table spec_processor;
drop table spec_display;
drop table spec_camera;
drop table spec_memory;
drop table spec_network;
drop table spec_connect;
drop table spec_specifications;
drop table spec_battery;
drop table spec_audio;
drop table spec_service;

drop sequence ph_phone_seq;
drop table ph_phone;

create sequence ph_phone_seq
	start with 1
	increment by 1
	nocycle
	nocache;

--핸드폰 정보, 핸드폰명, 핸드폰사진, 제조사명, 출고일
create table ph_phone(
	no number primary key,
	name varchar2(100) ,
	image LONG not null,
	manufacture varchar2(15) not null,
	release_date varchar2(30) not null
);

--samsung
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge', '/resources/images/phone/GalaxyS7edge_화이트펄.png', 'samsung', '2016년11월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge Olympic Games Limited Edition', '/resources/images/phone/GalaxyS7edgeOlympic_블랙.png', 'samsung', '2016년07월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge Injustice Edition', '/resources/images/phone/GalaxyS7edgeInjustice_블랙.png', 'samsung', '2016년06월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7', '/resources/images/phone/GalaxyS7_블랙오닉스.png', 'samsung', '2016년07월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note5', '/resources/images/phone/Galaxynote5_골드플래티넘.png', 'samsung', '2015년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6 edge plus', '/resources/images/phone/GalaxyS6_골드플래티넘.png', 'samsung', '2015년08월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6 edge', '/resources/images/phone/GalaxyS6edge_골드플래티넘.png', 'samsung', '2015년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6', '/resources/images/phone/GalaxyS6_화이트펄.png', 'samsung', '2015년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A8(2016)', '/resources/images/phone/GalaxyA8(2016)_실버.png', 'samsung', '2016년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A3(2016)', '/resources/images/phone/GalaxyA3(2016)_블랙.png', 'samsung', '2016년03월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A5(2016)', '/resources/images/phone/GalaxyA5(2016)_블랙.png', 'samsung', '2016년01월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A7(2016)', '/resources/images/phone/GalaxyA7(2016)_블랙.png', 'samsung', '2016년01월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J3(2016)', '/resources/images/phone/GalaxyJ3(2016)_화이트.png', 'samsung', '2016년05월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J5(2016)', '/resources/images/phone/GalaxyJ5(2016)_블랙.png', 'samsung', '2016년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J7(2016)', '/resources/images/phone/GalaxyJ7(2016)_블랙.png', 'samsung', '2016년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note edge', '/resources/images/phone/GalaxynoteEdge_화이트.png', 'samsung', '2014년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note4 S-LTE', '/resources/images/phone/Galaxynote4SLTE_화이트.png', 'samsung', '2015년01월');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note4', '/resources/images/phone/Galaxynote4_화이트.png', 'samsung', '2014년09월');

--apple
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 7', '/resources/images/phone/iPhone7_실버.png', 'apple', '2016년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 7 plus', '/resources/images/phone/iPhone7Plus_실버.png', 'apple', '2016년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6s', '/resources/images/phone/iPhone6s_실버.png', 'apple', '2015년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6s Plus', '/resources/images/phone/iPhone6sPlus_실버.png', 'apple', '2015년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6 Plus', '/resources/images/phone/iPhone6Plus_실버.png', 'apple', '2014년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhoneSE', '/resources/images/phone/iPhoneSE_로즈골드.png', 'apple', '2016년05월');

--lg
insert into ph_phone values (ph_phone_seq.nextval, 'V20', '/resources/images/phone/V20_실버.png', 'lg', '2016년09월');
insert into ph_phone values (ph_phone_seq.nextval, 'V10', '/resources/images/phone/V10_럭스화이트.png', 'lg', '2015년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'G5', '/resources/images/phone/G5_실버.png', 'lg', '2016년03월');
insert into ph_phone values (ph_phone_seq.nextval, 'G4', '/resources/images/phone/G4_세라믹화이트.png', 'lg', '2015년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'GStylo', '/resources/images/phone/GStylo_화이트.png', 'lg', '2015년04월');
insert into ph_phone values (ph_phone_seq.nextval, 'GFlex2', '/resources/images/phone/GFlex2_플래티넘실버.png', 'lg', '2015년01월');
insert into ph_phone values (ph_phone_seq.nextval, 'G3Screen', '/resources/images/phone/G3Screen_화이트.png', 'lg', '2014년10월');
insert into ph_phone values (ph_phone_seq.nextval, 'G3A', '/resources/images/phone/G3A_화이트.png', 'lg', '2014년08월');
insert into ph_phone values (ph_phone_seq.nextval, 'G3Cat6', '/resources/images/phone/G3Cat6_실크화이트.png', 'lg', '2014년08월');
insert into ph_phone values (ph_phone_seq.nextval, 'G3', '/resources/images/phone/G3_실크화이트.png', 'lg', '2014년05월');

drop sequence ph_color_seq;
create sequence ph_color_seq
   start with 1
   increment by 1 
   nocache
   nocycle;
create table ph_color( --핸드폰 색상
	cno number,
	no number,
	color varchar2(30) not null,
	image LONG not null,
	foreign key(no) references ph_phone(no),
	primary key(cno)
);
select no, color, image from ph_color ;
--samsung


insert into ph_color values (ph_color_seq.nextval,1, '화이트펄', '/resources/images/phone/GalaxyS7edge_화이트펄.png');
insert into ph_color values (ph_color_seq.nextval,1, '블루코랄', '/resources/images/phone/GalaxyS7edge_블루코랄.png');
insert into ph_color values (ph_color_seq.nextval,1, '블랙오닉스', '/resources/images/phone/GalaxyS7edge_블랙오닉스.png');
insert into ph_color values (ph_color_seq.nextval,1, '골드플래티넘', '/resources/images/phone/GalaxyS7edge_골드플래티넘.png');
insert into ph_color values (ph_color_seq.nextval,1, '실버티타늄', '/resources/images/phone/GalaxyS7edge_실버티타늄.png');
insert into ph_color values (ph_color_seq.nextval,1, '핑크골드', '/resources/images/phone/GalaxyS7edge_핑크골드.png');

insert into ph_color values (ph_color_seq.nextval,2, '블랙', '/resources/images/phone/GalaxyS7edgeOlympic_블랙.png');

insert into ph_color values (ph_color_seq.nextval,3, '블랙', '/resources/images/phone/GalaxyS7edgeInjustice_블랙.png');

insert into ph_color values (ph_color_seq.nextval,4, '블랙오닉스', '/resources/images/phone/GalaxyS7_블랙오닉스.png');
insert into ph_color values (ph_color_seq.nextval,4, '화이트펄', '/resources/images/phone/GalaxyS7_화이트펄.png');
insert into ph_color values (ph_color_seq.nextval,4, '실버티타늄', '/resources/images/phone/GalaxyS7_실버티타늄.png');
insert into ph_color values (ph_color_seq.nextval,4, '골드플래티넘', '/resources/images/phone/GalaxyS7_골드플래티넘.png');
insert into ph_color values (ph_color_seq.nextval,4, '핑크골드', '/resources/images/phone/GalaxyS7_핑크골드.png');
insert into ph_color values (ph_color_seq.nextval,4, '핑크블로섬', '/resources/images/phone/GalaxyS7_핑크블로섬.png');

insert into ph_color values (ph_color_seq.nextval,5, '골드플래티넘', '/resources/images/phone/Galaxynote5_골드플래티넘.png');
insert into ph_color values (ph_color_seq.nextval,5, '블랙사파이어', '/resources/images/phone/Galaxynote5_블랙사파이어.png');
insert into ph_color values (ph_color_seq.nextval,5, '실버티타늄', '/resources/images/phone/Galaxynote5_실버티타늄.png');
insert into ph_color values (ph_color_seq.nextval,5, '화이트펄', '/resources/images/phone/Galaxynote5_화이트펄.png');
insert into ph_color values (ph_color_seq.nextval,5, '핑크골드', '/resources/images/phone/Galaxynote5_핑크골드.png');

insert into ph_color values (ph_color_seq.nextval,6, '골드플래티넘', '/resources/images/phone/GalaxyS6edgePlus_골드플래티넘.png');
insert into ph_color values (ph_color_seq.nextval,6, '블랙사파이어', '/resources/images/phone/GalaxyS6edgePlus_블랙사파이어.png');

insert into ph_color values (ph_color_seq.nextval,7, '골드플래티넘', '/resources/images/phone/GalaxyS6edge_골드플래티넘.png');
insert into ph_color values (ph_color_seq.nextval,7, '화이트펄', '/resources/images/phone/GalaxyS6edge_화이트펄.png');
insert into ph_color values (ph_color_seq.nextval,7, '블랙사파이어', '/resources/images/phone/GalaxyS6edge_블랙사파이어.png');
insert into ph_color values (ph_color_seq.nextval,7, '그린에메랄드', '/resources/images/phone/GalaxyS6edge_그린에메랄드.png');

insert into ph_color values (ph_color_seq.nextval,8, '화이트펄', '/resources/images/phone/GalaxyS6_화이트펄.png');
insert into ph_color values (ph_color_seq.nextval,8, '블랙사파이어', '/resources/images/phone/GalaxyS6_블랙사파이어.png');
insert into ph_color values (ph_color_seq.nextval,8, '골드플래티넘', '/resources/images/phone/GalaxyS6_골드플래티넘.png');
insert into ph_color values (ph_color_seq.nextval,8, '블루사파이어', '/resources/images/phone/GalaxyS6_블루사파이어.png');

insert into ph_color values (ph_color_seq.nextval,9, '실버', '/resources/images/phone/GalaxyA8(2016)_실버.png');
insert into ph_color values (ph_color_seq.nextval,9, '핑크골드', '/resources/images/phone/GalaxyA8(2016)_핑크골드.png');
insert into ph_color values (ph_color_seq.nextval,9, '화이트블루', '/resources/images/phone/GalaxyA8(2016)_화이트블루.png');

insert into ph_color values (ph_color_seq.nextval,10, '블랙', '/resources/images/phone/GalaxyA3(2016)_블랙.png');
insert into ph_color values (ph_color_seq.nextval,10, '화이트', '/resources/images/phone/GalaxyA3(2016)_화이트.png');
insert into ph_color values (ph_color_seq.nextval,10, '마샨핑크', '/resources/images/phone/GalaxyA3(2016)_마샨핑크.png');

insert into ph_color values (ph_color_seq.nextval,11, '블랙', '/resources/images/phone/GalaxyA5(2016)_블랙.png');
insert into ph_color values (ph_color_seq.nextval,11, '화이트', '/resources/images/phone/GalaxyA5(2016)_화이트.png');
insert into ph_color values (ph_color_seq.nextval,11, '마샨핑크', '/resources/images/phone/GalaxyA5(2016)_마샨핑크.png');

insert into ph_color values (ph_color_seq.nextval,12, '블랙', '/resources/images/phone/GalaxyA7(2016)_블랙.png');
insert into ph_color values (ph_color_seq.nextval,12, '화이트', '/resources/images/phone/GalaxyA7(2016)_화이트.png');
insert into ph_color values (ph_color_seq.nextval,12, '마샨핑크', '/resources/images/phone/GalaxyA7(2016)_마샨핑크.png');

insert into ph_color values (ph_color_seq.nextval,13, '화이트', '/resources/images/phone/GalaxyJ3(2016)_화이트.png');

insert into ph_color values (ph_color_seq.nextval,14, '블랙', '/resources/images/phone/GalaxyJ5(2016)_블랙.png');
insert into ph_color values (ph_color_seq.nextval,14, '화이트', '/resources/images/phone/GalaxyJ5(2016)_화이트.png');

insert into ph_color values (ph_color_seq.nextval,15, '골드', '/resources/images/phone/GalaxyJ7(2016)_골드.png');
insert into ph_color values (ph_color_seq.nextval,15, '블랙', '/resources/images/phone/GalaxyJ7(2016)_블랙.png');

insert into ph_color values (ph_color_seq.nextval,16, '화이트', '/resources/images/phone/GalaxynoteEdge_화이트.png');
insert into ph_color values (ph_color_seq.nextval,16, '블랙', '/resources/images/phone/GalaxynoteEdge_블랙.png');

insert into ph_color values (ph_color_seq.nextval,17, '화이트', '/resources/images/phone/Galaxynote4SLTE_화이트.png');
insert into ph_color values (ph_color_seq.nextval,17, '블랙', '/resources/images/phone/Galaxynote4SLTE_블랙.png');
insert into ph_color values (ph_color_seq.nextval,17, '실버', '/resources/images/phone/Galaxynote4SLTE_실버.png');
insert into ph_color values (ph_color_seq.nextval,17, '핑크', '/resources/images/phone/Galaxynote4SLTE_핑크.png');
insert into ph_color values (ph_color_seq.nextval,17, '레드', '/resources/images/phone/Galaxynote4SLTE_레드.png');

insert into ph_color values (ph_color_seq.nextval,18, '화이트', '/resources/images/phone/Galaxynote4_화이트.png');
insert into ph_color values (ph_color_seq.nextval,18, '블랙', '/resources/images/phone/Galaxynote4_블랙.png');
insert into ph_color values (ph_color_seq.nextval,18, '골드', '/resources/images/phone/Galaxynote4_골드.png');
insert into ph_color values (ph_color_seq.nextval,18, '핑크', '/resources/images/phone/Galaxynote4_핑크.png');
insert into ph_color values (ph_color_seq.nextval,18, '레드', '/resources/images/phone/Galaxynote4_레드.png');

--apple
insert into ph_color values (ph_color_seq.nextval,19, '로즈골드', '/resources/images/phone/iPhone7_로드골드.png');
insert into ph_color values (ph_color_seq.nextval,19, '골드', '/resources/images/phone/iPhone7_골드.png');
insert into ph_color values (ph_color_seq.nextval,19, '실버', '/resources/images/phone/iPhone7_실버.png');
insert into ph_color values (ph_color_seq.nextval,19, '블랙', '/resources/images/phone/iPhone7_블랙.png');
insert into ph_color values (ph_color_seq.nextval,19, '제트블랙', '/resources/images/phone/iPhone7_제트블랙.png');

insert into ph_color values (ph_color_seq.nextval,20, '로즈골드', '/resources/images/phone/iPhone7Plus_로즈골드.png');
insert into ph_color values (ph_color_seq.nextval,20, '골드', '/resources/images/phone/iPhone7Plus_골드.png');
insert into ph_color values (ph_color_seq.nextval,20, '실버', '/resources/images/phone/iPhone7Plus_실버.png');
insert into ph_color values (ph_color_seq.nextval,20, '블랙', '/resources/images/phone/iPhone7Plus_블랙.png');
insert into ph_color values (ph_color_seq.nextval,20, '제트블랙', '/resources/images/phone/iPhone7Plus_제트블랙.png');

insert into ph_color values (ph_color_seq.nextval,21, '스페이스그레이', '/resources/images/phone/iPhone6s_스페이스그레이.png');
insert into ph_color values (ph_color_seq.nextval,21, '실버', '/resources/images/phone/iPhone6s_실버.png');
insert into ph_color values (ph_color_seq.nextval,21, '골드', '/resources/images/phone/iPhone6s_골드.png');
insert into ph_color values (ph_color_seq.nextval,21, '로즈골드', '/resources/images/phone/iPhone6s_로즈골드.png');

insert into ph_color values (ph_color_seq.nextval,22, '스페이스그레이', '/resources/images/phone/iPhone6sPlus_스페이스그레이.png');
insert into ph_color values (ph_color_seq.nextval,22, '실버', '/resources/images/phone/iPhone6sPlus_실버.png');
insert into ph_color values (ph_color_seq.nextval,22, '골드', '/resources/images/phone/iPhone6sPlus_골드.png');
insert into ph_color values (ph_color_seq.nextval,22, '로즈골드', '/resources/images/phone/iPhone6sPlus_로즈골드.png');

insert into ph_color values (ph_color_seq.nextval,23, '골드', '/resources/images/phone/iPhone6Plus_골드.png');
insert into ph_color values (ph_color_seq.nextval,23, '스페이스그레이', '/resources/images/phone/iPhone6Plus_스페이스그레이.png');
insert into ph_color values (ph_color_seq.nextval,23, '실버', '/resources/images/phone/iPhone6Plus_실버.png');

insert into ph_color values (ph_color_seq.nextval,24, '스페이스그레이', '/resources/images/phone/iPhoneSE_스페이스그레이.png');
insert into ph_color values (ph_color_seq.nextval,24, '로즈골드', '/resources/images/phone/iPhoneSE_로즈골드.png');

--lg
insert into ph_color values (ph_color_seq.nextval,25, '티탄', '/resources/images/phone/V20_티탄.png');
insert into ph_color values (ph_color_seq.nextval,25, '실버', '/resources/images/phone/V20_실버.png');
insert into ph_color values (ph_color_seq.nextval,25, '핑크', '/resources/images/phone/V20_핑크.png');

insert into ph_color values (ph_color_seq.nextval,26, '럭스 화이트', '/resources/images/phone/V10_럭스화이트.png');
insert into ph_color values (ph_color_seq.nextval,26, '모던 베이지', '/resources/images/phone/V10_모던베이지.png');
insert into ph_color values (ph_color_seq.nextval,26, '오션 블루', '/resources/images/phone/V10_오션블루.png');

insert into ph_color values (ph_color_seq.nextval,27, '티탄', '/resources/images/phone/G5_티탄.png');
insert into ph_color values (ph_color_seq.nextval,27, '실버', '/resources/images/phone/G5_실버.png');
insert into ph_color values (ph_color_seq.nextval,27, '핑크', '/resources/images/phone/G5_핑크.png');
insert into ph_color values (ph_color_seq.nextval,27, '골드', '/resources/images/phone/G5_골드.png');

insert into ph_color values (ph_color_seq.nextval,28, '세라믹화이트', '/resources/images/phone/G4_세라믹화이트.png');
insert into ph_color values (ph_color_seq.nextval,28, '메탈릭그레이', '/resources/images/phone/G4_메탈릭그레이.png');
insert into ph_color values (ph_color_seq.nextval,28, '천연가죽브라운', '/resources/images/phone/G4_천연가죽브라운.png');
insert into ph_color values (ph_color_seq.nextval,28, '천연가죽블랙', '/resources/images/phone/G4_천연가죽블랙.png');

insert into ph_color values (ph_color_seq.nextval,29, '티탄', '/resources/images/phone/GStylo_티탄.png');
insert into ph_color values (ph_color_seq.nextval,29, '화이트', '/resources/images/phone/GStylo_화이트.png');

insert into ph_color values (ph_color_seq.nextval,30, '플래티넘실버', '/resources/images/phone/GFlex2_플래티넘실버.png');
insert into ph_color values (ph_color_seq.nextval,30, '플라멩고레드', '/resources/images/phone/GFlex2_플라멩고레드.png');

insert into ph_color values (ph_color_seq.nextval,31, '화이트', '/resources/images/phone/G3Screen_화이트.png');
insert into ph_color values (ph_color_seq.nextval,31, '블랙', '/resources/images/phone/G3Screen_블랙.png');

insert into ph_color values (ph_color_seq.nextval,32, '티탄', '/resources/images/phone/G3A_티탄.png');
insert into ph_color values (ph_color_seq.nextval,32, '화이트', '/resources/images/phone/G3A_화이트.png');

insert into ph_color values (ph_color_seq.nextval,33, '메탈릭블랙', '/resources/images/phone/G3Cat6_메탈릭블랙.png');
insert into ph_color values (ph_color_seq.nextval,33, '실크화이트', '/resources/images/phone/G3Cat6_실크화이트.png');
insert into ph_color values (ph_color_seq.nextval,33, '샤인골드', '/resources/images/phone/G3Cat6_샤인골드.png');
insert into ph_color values (ph_color_seq.nextval,33, '와인', '/resources/images/phone/G3Cat6_와인.png');
insert into ph_color values (ph_color_seq.nextval,33, '문바이올렛', '/resources/images/phone/G3Cat6_문바이올렛.png');

insert into ph_color values (ph_color_seq.nextval,34, '메탈릭블랙', '/resources/images/phone/G3_메탈릭블랙.png');
insert into ph_color values (ph_color_seq.nextval,34, '실크화이트', '/resources/images/phone/G3_실크화이트.png');
insert into ph_color values (ph_color_seq.nextval,34, '샤인골드', '/resources/images/phone/G3_샤인골드.png');
drop sequence ph_capacity_seq;
create sequence ph_capacity_seq
   start with 1
   increment by 1 
   nocache
   nocycle;
create table ph_capacity( --핸드폰 용량
	cno number,
	no number,
	capacity varchar2(15) not null,
	release_price number not null, --출고가
	foreign key(no) references ph_phone(no),
	primary key(cno)
);

--samsung
insert into ph_capacity values (ph_capacity_seq.nextval,1, '32GB', 924000);
insert into ph_capacity values (ph_capacity_seq.nextval,1, '64GB', 968000);
insert into ph_capacity values (ph_capacity_seq.nextval,2, '32GB', 1067000);
insert into ph_capacity values (ph_capacity_seq.nextval,3, '32GB', 1199000);
insert into ph_capacity values (ph_capacity_seq.nextval,4, '32GB', 836000);
insert into ph_capacity values (ph_capacity_seq.nextval,4, '64GB', 880000);
insert into ph_capacity values (ph_capacity_seq.nextval,5, '32GB', 899800);
insert into ph_capacity values (ph_capacity_seq.nextval,5, '64GB', 965800);
insert into ph_capacity values (ph_capacity_seq.nextval,5, '128GB', 999000);
insert into ph_capacity values (ph_capacity_seq.nextval,6, '32GB', 599500);
insert into ph_capacity values (ph_capacity_seq.nextval,7, '32GB', 735900);
insert into ph_capacity values (ph_capacity_seq.nextval,7, '64GB', 755700);
insert into ph_capacity values (ph_capacity_seq.nextval,8, '32GB', 858000);
insert into ph_capacity values (ph_capacity_seq.nextval,8, '64GB', 924000);
insert into ph_capacity values (ph_capacity_seq.nextval,9, '32GB', 649000);
insert into ph_capacity values (ph_capacity_seq.nextval,10, '16GB', 352000);
insert into ph_capacity values (ph_capacity_seq.nextval,11, '16GB', 429000);
insert into ph_capacity values (ph_capacity_seq.nextval,12, '16GB', 528000);
insert into ph_capacity values (ph_capacity_seq.nextval,13, '8GB', 231000);
insert into ph_capacity values (ph_capacity_seq.nextval,14, '16GB', 297000);
insert into ph_capacity values (ph_capacity_seq.nextval,15, '16GB', 363000);
insert into ph_capacity values (ph_capacity_seq.nextval,16, '32GB', 1067000);
insert into ph_capacity values (ph_capacity_seq.nextval,17, '32GB', 799700);
insert into ph_capacity values (ph_capacity_seq.nextval,18, '32GB', 957000);

--apple
insert into ph_capacity values (ph_capacity_seq.nextval,19, '32GB', 869000);
insert into ph_capacity values (ph_capacity_seq.nextval,19, '128GB', 999900);
insert into ph_capacity values (ph_capacity_seq.nextval,19, '256GB', 1130800);
insert into ph_capacity values (ph_capacity_seq.nextval,20, '32GB', 1021900);
insert into ph_capacity values (ph_capacity_seq.nextval,20, '128GB', 1152800);
insert into ph_capacity values (ph_capacity_seq.nextval,20, '256GB', 1283700);
insert into ph_capacity values (ph_capacity_seq.nextval,21, '16GB', 869000);
insert into ph_capacity values (ph_capacity_seq.nextval,21, '64GB', 999900);
insert into ph_capacity values (ph_capacity_seq.nextval,21, '128GB', 1130800);
insert into ph_capacity values (ph_capacity_seq.nextval,22, '16GB', 999900);
insert into ph_capacity values (ph_capacity_seq.nextval,22, '64GB', 1130800);
insert into ph_capacity values (ph_capacity_seq.nextval,22, '128GB', 1261700);
insert into ph_capacity values (ph_capacity_seq.nextval,23, '16GB', 899800);
insert into ph_capacity values (ph_capacity_seq.nextval,23, '64GB', 1050600);
insert into ph_capacity values (ph_capacity_seq.nextval,24, '16GB', 569800);
insert into ph_capacity values (ph_capacity_seq.nextval,24, '64GB', 699600);

--lg
insert into ph_capacity values (ph_capacity_seq.nextval,25, '64GB', 899800);
insert into ph_capacity values (ph_capacity_seq.nextval,26, '64GB', 599500);
insert into ph_capacity values (ph_capacity_seq.nextval,27, '32GB', 699600);
insert into ph_capacity values (ph_capacity_seq.nextval,28, '32GB', 599500);
insert into ph_capacity values (ph_capacity_seq.nextval,29, '8GB', 517000);
insert into ph_capacity values (ph_capacity_seq.nextval,30, '32GB', 899800);
insert into ph_capacity values (ph_capacity_seq.nextval,31, '32GB', 550000);
insert into ph_capacity values (ph_capacity_seq.nextval,32, '32GB', 451000);
insert into ph_capacity values (ph_capacity_seq.nextval,33, '32GB', 649000);
insert into ph_capacity values (ph_capacity_seq.nextval,34, '32GB', 499400);

--스펙

--프로세서
create table spec_processor(
	no number primary key,
	cpu_Speed varchar2(50),
	cpu_type varchar2(80),
	foreign key(no) references ph_phone(no)
);

insert into spec_processor values(1, '2.3GHz, 1.5GHz', 'Octa-Core');
insert into spec_processor values(2, '2.3GHz, 1.6GHz', 'Octa-Core');
insert into spec_processor values(3, '2.3GHz, 1.6GHz', 'Octa-Core');
insert into spec_processor values(4, '2.3GHz, 1.6GHz', 'Octa-Core');
insert into spec_processor values(5, '2.1GHz, 1.5GHz', 'Octa-Core');
insert into spec_processor values(6, '2.1GHz, 1.5GHz', 'Octa-Core');
insert into spec_processor values(7, '2.1GHz, 1.5GHz', 'Octa-Core');
insert into spec_processor values(8, '2.1GHz, 1.5GHz', 'Octa-Core');
insert into spec_processor values(9, '2.1GHz, 1.5GHz', 'Octa-Core');
insert into spec_processor values(10, '1.5GHz', 'Ouad-Core');
insert into spec_processor values(11, '1.6GHz', 'Octa-Core');
insert into spec_processor values(12, '1.6GHz', 'Octa-Core');
insert into spec_processor values(13, '1.6GHz', 'Ouad-Core');
insert into spec_processor values(14, '1.2GHz', 'Ouad-Core');
insert into spec_processor values(15, '1.6GHz', 'Octa-Core');
insert into spec_processor values(16, '1.9GHz, 1.3GHz', 'Octa-Core');
insert into spec_processor values(17, '1.9GHz, 1.3GHz', 'Octa-Core');
insert into spec_processor values(18, '1.9GHz, 1.3GHz', 'Octa-Core');
insert into spec_processor values(25, 'null', '퀄컴 스냅드래곤 820 프로세서');
insert into spec_processor values(26, 'null', '퀄컴 스냅드래곤 808 프로세서');
insert into spec_processor values(27, '2.15GHz', '퀄컴 스냅드래곤 820 프로세서');
insert into spec_processor values(28, 'null', '퀄컴스냅드래곤 808 프로세서 with X10 LTE');
insert into spec_processor values(29, '1.2GHz', '퀄컴스냅드래곤 410 프로세서 (Quad Core)');
insert into spec_processor values(30, '1.2GHz', '퀄컴 스냅드래곤810 프로세서');
insert into spec_processor values(31, '1.5GHz Quad + 1.2GHz Quad', 'Nuclun Octa-core');
insert into spec_processor values(32, '2.3GHz Quad Core', '퀄컴 스냅드래곤 800');
insert into spec_processor values(33, '2.7GHz Quad Core', '퀄컴 스냅드래곤 805');
insert into spec_processor values(34, '2.5GHz Quad Core', '퀄컴 스냅드래곤 801');

--디스플레이
create table spec_display(
	no number primary key,
	size_main varchar2(100),
	resoluation_main varchar2(50),
	type_main varchar2(250),
	color_depth_main varchar2(50),
	s_pen varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into spec_display values (1,'139.5mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '아니오');
insert into spec_display values (2,'139.5mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '아니오');
insert into spec_display values (3,'139.5mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '아니오');
insert into spec_display values (4,'129.2mm','2560 X 1440 (Quad HD)','Super AMOLED', '16M', '아니오');
insert into spec_display values (5,'143.9mm','2560 X 1440 (Quad HD)','Super AMOLED', '16M', '예');
insert into spec_display values (6,'143.9mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '아니오');
insert into spec_display values (7,'129.2mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '아니오');
insert into spec_display values (8,'129.2mm','2560 X 1440 (Quad HD)','Super AMOLED', '16M', '아니오');
insert into spec_display values (9,'144.3mm','1920 X 1080 (FHD)','Super AMOLED', '16M', '아니오');
insert into spec_display values (10,'120.4mm','720 X 1280 (HD)','Super AMOLED', '16M', '아니오');
insert into spec_display values (11,'132.2mm','1920 X 1080 (FHD)','Super AMOLED', '16M', '아니오');
insert into spec_display values (12,'139.3mm','1920 X 1080 (FHD)','Super AMOLED', '16M', '아니오');
insert into spec_display values (13,'126.3mm','1280 X 720 (HD)','Super AMOLED', '16M', '아니오');
insert into spec_display values (14,'131.8mm','1280 X 720 (HD)','Super AMOLED', '16M', '아니오');
insert into spec_display values (15,'139.5mm','1280 X 720 (HD)','Super AMOLED', '16M', '아니오');
insert into spec_display values (16,'141.9mm','2560 x [1440+160] (Quad HD+)','Super AMOLED', '16M', '예');
insert into spec_display values (17,'143.9mm','2560 x 1440 (Quad HD)','Super AMOLED', '16M', '예');
insert into spec_display values (18,'143.9mm','2560 x 1440 (Quad HD)','Super AMOLED', '16M', '예');
insert into spec_display values (19,'4.7형(대각선) LED 백라이트 와이드스크린','1334 x 750 픽셀 해상도(326ppi)','Retina HD 디스플레이, Multi-Touch 디스플레이(IPS 기술), 와이드 컬러 디스플레이(P3), 625 cd/m2 최대 밝기(일반), 광시야각을 위한 듀얼 도메인 픽셀, 지문 및 유분 방지 코팅', '1400:1 명암비(일반)', '');
insert into spec_display values (20,'5.5형(대각선) LED 백라이트 와이드스크린','1920 x 1080 픽셀 해상도(401ppi)','Retina HD 디스플레이, Multi-Touch 디스플레이(IPS 기술), 와이드 컬러 디스플레이(P3), 625 cd/m2 최대 밝기(일반), 광시야각을 위한 듀얼 도메인 픽셀, 지문 및 유분 방지 코팅', '1300:1 명암비(일반)', '');
insert into spec_display values (21,'4.7형(대각선) LED 백라이트 와이드스크린','1334 x 750 픽셀 해상도(326ppi)','3D Touch가 적용된 Retina HD 디스플레이, 500 cd/m2 최대 밝기(일반), 풀 sRGB표준, 광시야각을 위한 듀얼 도메인 픽셀, 지문 및 유분 방지 코팅', '1400:1 명암비(일반)', '');
insert into spec_display values (22,'5.5형(대각선) LED 백라이트 와이드스크린','1920 x 1080 픽셀 해상도(401ppi)','3D Touch가 적용된 Retina HD 디스플레이, 500 cd/m2 최대 밝기(일반), 풀 sRGB표준, 광시야각을 위한 듀얼 도메인 픽셀, 지문 및 유분 방지 코팅', '1300:1 명암비(일반)', '');
insert into spec_display values (23,'5.5형(대각선) LED 백라이트 와이드스크린','1920 x 1080 픽셀 해상도(401ppi)','Retina HD 디스플레이, 500 cd/m2 최대 밝기(일반), 풀 sRGB표준, 광시야각을 위한 듀얼 도메인 픽셀, 지문 및 유분 방지 코팅', '1300:1 명암비(일반)', '');
insert into spec_display values (24,'4형(대각선) LED 백라이트 와이드스크린 Multi-Touch 디스플레이','1136 x 640 픽셀 해상도(326ppi)','Retina HD 디스플레이, 500 cd/m2 최대 밝기(일반), 풀 sRGB표준, 지문 및 유분 방지 코팅', '800:1 명암비(일반)', '');
insert into spec_display values (25,'152.3mm','2560 X 1440 QHD IPS 퀀텀','', '', '');
insert into spec_display values (26,'152.3mm','2560 X 1440 QHD IPS 퀀텀','', '', '');
insert into spec_display values (27,'134.6mm','2560 X 1440 QHD IPS 퀀텀','', '', '');
insert into spec_display values (28,'138.8mm','2560 X 1440','', '', '');
insert into spec_display values (29,'144.7mm','HD IPS 디스플레이(258ppi)','', '', '');
insert into spec_display values (30,'138.7mm','1920 X 1080 (Full HD)','', '', '');
insert into spec_display values (31,'152mm','Full HD IPS LCD','', '', '');
insert into spec_display values (32,'132.2mm','1920 X 1080 (Full HD IPS 디스플레이)','', '', '');
insert into spec_display values (33,'138.78mm','2560x1440 (Quad HD IPS 디스플레이)','', '', '');
insert into spec_display values (34,'138.78mm','2560x1440 (Quad HD IPS 디스플레이)','', '', '');

--카메라
create table spec_camera(
	no number primary key,
	camera_resoluation varchar2(50),
	maincamera_pixel varchar2(100),
	maincamera_aperture varchar2(100),
	frontcamera_pixel varchar2(50),
	frontcamera_aperture varchar2(50),
	maincamera_flash varchar2(50),
	maincamera_autofocus varchar2(50),
	camera_detail LONG,
	foreign key(no) references ph_phone(no)
);

insert into spec_camera values (1,'UHD 4K (3840 x 2160) @30fps','Dual Pixel 12.0 MP','f/1.7','CMOS 5.0 MP','f/1.7','예', '예', '');
insert into spec_camera values (2,'UHD 4K (3840 x 2160) @30fps','Dual Pixel 12.0 MP','f/1.7','CMOS 5.0 MP','f/1.7','예', '예', '');
insert into spec_camera values (3,'UHD 4K (3840 x 2160) @30fps','Dual Pixel 12.0 MP','f/1.7','CMOS 5.0 MP','f/1.7','예', '예', '');
insert into spec_camera values (4,'UHD 4K (3840 x 2160) @30fps','Dual Pixel 12.0 MP','f/1.7','CMOS 5.0 MP','f/1.7','예', '예', '');
insert into spec_camera values (5,'UHD 4K (3840 x 2160) @30fps','CMOS 16.0 MP','','CMOS 5.0 MP','','예', '예', '');
insert into spec_camera values (6,'UHD 4K (3840 x 2160) @30fps','CMOS 16.0 MP','','CMOS 5.0 MP','','예', '예', '');
insert into spec_camera values (7,'UHD 4K (3840 x 2160) @30fps','CMOS 16.0 MP','','CMOS 5.0 MP','','예', '예', '');
insert into spec_camera values (8,'UHD 4K (3840 x 2160) @30fps','CMOS 16.0 MP','','CMOS 5.0 MP','','예', '예', '');
insert into spec_camera values (9,'FHD 4K (1920 x 1080) @30fps','CMOS 16.0 MP','f/1.9','CMOS 8.0 MP','f/1.9','예', '예', '');
insert into spec_camera values (10,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','f/1.9','CMOS 5.0 MP','f/1.9','예', '예', '');
insert into spec_camera values (11,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','f/1.9','CMOS 5.0 MP','f/1.9','예', '예', '');
insert into spec_camera values (12,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','f/1.9','CMOS 5.0 MP','f/1.9','예', '예', '');
insert into spec_camera values (13,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','','CMOS 5.0 MP','','예', '예', '');
insert into spec_camera values (14,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','f/1.9','CMOS 5.0 MP','f/1.9','예', '예', '');
insert into spec_camera values (15,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','f/1.9','CMOS 5.0 MP','f/1.9','예', '예', '');
insert into spec_camera values (16,'UHD 4K (3840 x 2160)@30fps','CMOS 16.0 MP','','CMOS 3.7 MP','','예', '예', '');
insert into spec_camera values (17,'UHD 4K (3840 x 2160)@30fps','CMOS 16.0 MP','','CMOS 3.7 MP','','예', '예', '');
insert into spec_camera values (18,'UHD 4K (3840 x 2160)@30fps','CMOS 16.0 MP','','CMOS 3.7 MP','','예', '예', '');
insert into spec_camera values (19,'','1200만 화소 카메라','f/1.8','','','', '','디지털 줌 최대 5배<br> 광학 이미지 흔들림 보정(OIS)<br> 6매(Six-element) 렌즈<br>
 쿼드-LED True Tone 플래시<br> 파노라마(최대 6300만 화소)<br> 사파이어 크리스털 렌즈 커버<br> 후면 조명 센서<br> 하이브리드 IR 필터<br> Focus Pixels를 갖춘 오토포커스<br> Focus Pixels를 갖춘 탭투포커스<br>
 이미지 흔들림 보정을 갖춘 Live Photos<br> 사진 및 Live Photos 촬영 시 넓은 색상 영역 포착<br> 향상된 주변 색조 매핑<br> 몸과 얼굴 인식<br> 노출 조절<br> 노이즈 감소<br> 사진을 위한 자동 HDR<br> 자동 흔들림 보정<br>
 고속 연사 모드<br> 타이머 모드<br> 사진 위치 표시 기능');
insert into spec_camera values (20,'','1200만 화소 와이드 앵글 및 망원 카메라','와이드 앵글: f/1.8 ,조리개망원: f/2.8 조리개','','','', '','광학 줌 2배, 디지털 줌 최대 10배<br> 
 광학 이미지 흔들림 보정(OIS)<br> 6매(Six-element) 렌즈<br> 쿼드-LED True Tone 플래시<br> 파노라마(최대 6300만 화소)<br> 사파이어 크리스털 렌즈 커버<br> 후면 조명 센서<br> 하이브리드 IR 필터<br>
 Focus Pixels를 갖춘 오토포커스<br> Focus Pixels를 갖춘 탭투포커스<br> 이미지 흔들림 보정을 갖춘 Live Photos<br> 사진 및 Live Photos 촬영 시 넓은 색상 영역 포착<br> 향상된 주변 색조 매핑<br> 몸과 얼굴 인식<br>
 노출 조절<br> 노이즈 감소<br> 사진을 위한 자동 HDR<br> 자동 흔들림 보정<br> 고속 연사 모드<br> 타이머 모드<br> 사진 위치 표시 기능');
insert into spec_camera values (21,'','1200만 화소 카메라','f/2.2 조리개','','','', '','이미지 흔들림 보정을 갖춘 Live Photos<br> Focus Pixels를 갖춘 오토포커스<br> 
True Tone 플래시<br> 파노라마(최대 6300만 화소)<br> 사진을 위한 자동 HDR<br> 노출 조절<br> 고속 연사 모드<br> 타이머 모드<br> 5매(Five-element) 렌즈<br> 5배 디지털 줌<br> 하이브리드 IR 필터<br> 
후면 조명 센서<br> 사파이어 크리스털 렌즈 커버<br> 자동 흔들림 보정<br> 주변 색조 매핑<br> 노이즈 감소<br> 얼굴 인식<br> 사진 위치 표시 기능');
insert into spec_camera values (22,'','1200만 화소 카메라','f/2.2 조리개','','','', '','이미지 흔들림 보정을 갖춘 Live Photos<br> Focus Pixels를 갖춘 오토포커스<br> 
광학 이미지 흔들림 보정(iPhone 6s Plus만 해당)<br> True Tone 플래시<br> 파노라마(최대 6300만 화소)<br> 사진을 위한 자동 HDR<br> 노출 조절<br> 고속 연사 모드<br> 타이머 모드<br> 5매(Five-element) 렌즈<br> 
5배 디지털 줌<br> 하이브리드 IR 필터<br> 후면 조명 센서<br> 사파이어 크리스털 렌즈 커버<br> 자동 흔들림 보정<br> 주변 색조 매핑<br> 노이즈 감소<br> 얼굴 인식<br> 사진 위치 표시 기능');
insert into spec_camera values (23,'','1200만 화소 카메라','f/2.2 조리개','','','', '','이미지 흔들림 보정을 갖춘 Live Photos<br> Focus Pixels를 갖춘 오토포커스<br> 
광학 이미지 흔들림 보정(iPhone 6s Plus만 해당)<br> True Tone 플래시<br> 파노라마(최대 6300만 화소)<br> 사진을 위한 자동 HDR<br> 노출 조절<br> 고속 연사 모드<br> 타이머 모드<br> 5매(Five-element) 렌즈<br> 
5배 디지털 줌<br> 하이브리드 IR 필터<br> 후면 조명 센서<br> 사파이어 크리스털 렌즈 커버<br> 자동 흔들림 보정<br> 주변 색조 매핑<br> 노이즈 감소<br> 얼굴 인식<br> 사진 위치 표시 기능');
insert into spec_camera values (24,'','1200만 화소 카메라','f/2.2 조리개','','','', '','이미지 흔들림 보정을 갖춘 Live Photos<br> Focus Pixels를 갖춘 오토포커스<br> 
이미지 흔들림 보정을 갖춘 Live Photos<br> True Tone 플래시<br> 파노라마(최대 6300만 화소)<br> 사진을 위한 자동 HDR<br> 노출 조절<br> 고속 연사 모드<br> 타이머 모드<br> 5매(Five-element) 렌즈<br> 
5배 디지털 줌<br> 하이브리드 IR 필터<br> 후면 조명 센서<br> 사파이어 크리스털 렌즈 커버<br> 자동 흔들림 보정<br> 주변 색조 매핑<br> 노이즈 감소<br> 얼굴 인식<br> 사진 위치 표시 기능');
insert into spec_camera values (25,'','일반 : 1600만화소 / 광각 : 800만화소','','광각 500만화소','','예', '예', '');
insert into spec_camera values (26,'','1600만화소','','듀얼 500만화소','','예', '예', '');
insert into spec_camera values (27,'','일반 : 1600만화소 / 광각 : 800만화소','','광각 800만화소','','예', '예', '');
insert into spec_camera values (28,'','1600만화소','','800만화소','','예', '예', '');
insert into spec_camera values (29,'','800만화소','','500만화소','','예', '예', '');
insert into spec_camera values (30,'','1300만화소','','210만화소','','예', '예', '');
insert into spec_camera values (31,'','1300만화소','','210만화소','','예', '예', '');
insert into spec_camera values (32,'','1300만화소','','210만화소','','예', '예', '');
insert into spec_camera values (33,'','1300만화소','','210만화소','','예', '예', '');
insert into spec_camera values (34,'','1300만화소','','210만화소','','예', '예', '');

--메모리
create table spec_memory(
	no number primary key,
	ramsize varchar2(50),
	romsize varchar2(50),
	usable_memory varchar2(50),
	outer_memory varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into spec_memory values (1,'4GB','32GB','23.5GB','MicroSD (최대256GB)');
insert into spec_memory values (2,'4GB','32GB','23.5GB','MicroSD (최대256GB)');
insert into spec_memory values (3,'4GB','32GB','23.5GB','MicroSD (최대256GB)');
insert into spec_memory values (4,'4GB','32GB','23.8GB','MicroSD (최대256GB)');
insert into spec_memory values (5,'4GB','64GB','53.8GB','');
insert into spec_memory values (6,'4GB','32GB','24.2GB','');
insert into spec_memory values (7,'3GB','32GB, 64GB, 128GB','24.5GB, 54.0GB, 113.0GB','아니오');
insert into spec_memory values (8,'3GB','32GB, 64GB','24.5GB, 54.0GB','아니오');
insert into spec_memory values (9,'3GB','32GB','23.5GB','MicroSD (최대256GB)');
insert into spec_memory values (10,'1.5GB','16GB','10.7GB','MicroSD (최대256GB)');
insert into spec_memory values (11,'2GB','16GB','10.1GB','MicroSD (최대128GB)');
insert into spec_memory values (12,'3GB','16GB','10.1GB','MicroSD (최대128GB)');
insert into spec_memory values (13,'1.5GB','8GB','3.8GB','MicroSD (최대128GB)');
insert into spec_memory values (14,'2GB','16GB','10.2GB','MicroSD (최대128GB)');
insert into spec_memory values (15,'2GB','16GB','10.4GB','MicroSD (최대128GB)');
insert into spec_memory values (16,'3GB','32GB','23.9GB','MicroSD (최대128GB)');
insert into spec_memory values (17,'3GB','32GB','23.4GB','MicroSD (최대128GB)');
insert into spec_memory values (18,'3GB','32GB','23.9GB','MicroSD (최대128GB)');
insert into spec_memory values (25,'4GB','64GB','','MicroSD slot 지원');
insert into spec_memory values (26,'4GB','64GB','','MicroSD slot 지원');
insert into spec_memory values (27,'4GB','32GB','','MicroSD slot 지원');
insert into spec_memory values (28,'3GB','32GB','','MicroSD slot 지원');
insert into spec_memory values (29,'1.5GB','8GB','','MicroSD slot 지원');
insert into spec_memory values (30,'2GB','32GB','','MicroSD slot 지원');
insert into spec_memory values (31,'2GB','32GB','','MicroSD slot 지원');
insert into spec_memory values (32,'2GB','32GB','','MicroSD slot 지원');
insert into spec_memory values (33,'3GB','32GB','','MicroSD slot 지원');
insert into spec_memory values (34,'3GB','32GB','','MicroSD slot 지원');

--네트워크
create table spec_network(
	no number primary key,
	type_of_sim_slot varchar2(100),
	gsm_2g varchar2(50),
	umts_3g varchar2(100),
	td_scdma_3g varchar2(50),
	fdd_lte_4g varchar2(200),
	tdd_lte_4g varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into spec_network values (1,'SIM 1 + MicroSD','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','B34(2010), B39(1880)','B1(2100), B2(1900), B3(1800), B4(AWS), B5(850), B7(2600), B8(900), B12(700), B17(700), B18(800), B19(800), B20(800), B25(1900), B26(800), B28(700)','B38(2600), B39(1900), B40(2300), B41(2500)');
insert into spec_network values (2,'SIM 1 + MicroSD','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','B34(2010), B39(1880)','B1(2100), B2(1900), B3(1800), B4(AWS), B5(850), B7(2600), B8(900), B12(700), B17(700), B18(800), B19(800), B20(800), B25(1900), B26(800), B28(700)','B38(2600), B39(1900), B40(2300), B41(2500)');
insert into spec_network values (3,'SIM 1 + MicroSD','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','B34(2010), B39(1880)','B1(2100), B2(1900), B3(1800), B4(AWS), B5(850), B7(2600), B8(900), B12(700), B17(700), B18(800), B19(800), B20(800), B25(1900), B26(800), B28(700)','B38(2600), B39(1900), B40(2300), B41(2500)');
insert into spec_network values (4,'SIM 1 + MicroSD','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','B34(2010), B39(1880)','B1(2100), B2(1900), B3(1800), B4(AWS), B5(850), B7(2600), B8(900), B12(700), B17(700), B18(800), B19(800), B20(800), B25(1900), B26(800), B28(700)','B38(2600), B39(1900), B40(2300), B41(2500)');
insert into spec_network values (5,'','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B2(1900), B3(1800), B5(850), B7(2600), B8(900), B17(700), B20(800), B26(800)','B38(2600), B39(1900), B41(2500)');
insert into spec_network values (6,'','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B2(1900), B3(1800), B5(850), B7(2600), B8(900), B17(700), B20(800), B26(800)','B38(2600), B39(1900), B41(2500)');
insert into spec_network values (7,'Nano-SIM (4FF)','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B2(1900), B3(1800), B5(850), B7(2600), B8(900), B17(700), B20(800), B26(800)','');
insert into spec_network values (8,'Nano-SIM (4FF)','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B2(1900), B3(1800), B5(850), B7(2600), B8(900), B17(700), B20(800), B26(800)','');
insert into spec_network values (9,'SIM 1 + MicroSD','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B3(1800), B5(850), B7(2600), B8(900), B17(700), B28(700)','B38(2600)');
insert into spec_network values (10,'SIM 1 + MicroSD','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B3(1800), B5(850), B7(2600), B8(900), B17(700)','');
insert into spec_network values (11,'','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B3(1800), B5(850), B7(2600), B8(900), B17(700)','');
insert into spec_network values (12,'','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B3(1800), B5(850), B7(2600), B8(900), B17(700)','');
insert into spec_network values (13,'','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B3(1800), B5(850), B7(2600), B8(900)','');
insert into spec_network values (14,'SIM 1','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B3(1800), B5(850), B7(2600), B8(900), B17(700)','');
insert into spec_network values (15,'SIM 1','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B3(1800), B5(850), B7(2600), B8(900), B17(700)','');
insert into spec_network values (16,'Micro-SIM (3FF)','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B3(1800), B5(850), B7(2600), B8(900), B17(700)','');
insert into spec_network values (17,'Micro-SIM (3FF)','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B3(1800), B5(850), B7(2600), B8(900), B17(700)','');
insert into spec_network values (18,'Micro-SIM (3FF)','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','','B1(2100), B3(1800), B5(850), B7(2600), B8(900), B17(700)','');
insert into spec_network values (19,'A10 Fusion 칩(64비트 아키텍처)<br>M10 모션 보조 프로세서 내장','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(대역 38, 39, 40, 41) ','FDD-LTE(대역 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(대역 38, 39, 40, 41) ');
insert into spec_network values (20,'A10 Fusion 칩(64비트 아키텍처)<br>M10 모션 보조 프로세서 내장','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(대역 38, 39, 40, 41) ','FDD-LTE(대역 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(대역 38, 39, 40, 41) ');
insert into spec_network values (21,'A9 칩(64비트 아키텍처)<br>M9 모션 보조 프로세서 내장','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(대역 38, 39, 40, 41) ','FDD-LTE(대역 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(대역 38, 39, 40, 41) ');
insert into spec_network values (22,'A9 칩(64비트 아키텍처)<br>M9 모션 보조 프로세서 내장','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(대역 38, 39, 40, 41) ','FDD-LTE(대역 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(대역 38, 39, 40, 41) ');
insert into spec_network values (23,'A9 칩(64비트 아키텍처)<br>M9 모션 보조 프로세서 내장','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(대역 38, 39, 40, 41) ','FDD-LTE(대역 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(대역 38, 39, 40, 41) ');
insert into spec_network values (24,'A9 칩(64비트 아키텍처)<br>M9 모션 보조 프로세서 내장','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(대역 38, 39, 40, 41) ','FDD-LTE(대역 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(대역 38, 39, 40, 41) ');

--연결
create table spec_connect(
	no number primary key,
	ant varchar2(50),
	usb_version varchar2(50),
	location varchar2(150),
	ear_adapter varchar2(50),
	mhl varchar2(50),
	wifi_direct varchar2(50),
	wifi varchar2(50),
	bluetooth_version varchar2(50),
	nfc varchar2(50),
	bluetooth_profile varchar2(100),
	pcsynk varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into spec_connect values (1,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO','예','Bluetooth v4.2','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (2,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO','예','Bluetooth v4.2','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (3,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO','예','Bluetooth v4.2','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (4,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO','예','Bluetooth v4.2','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (5,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','예','Bluetooth v4.2','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (6,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','예','Bluetooth v4.2','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (7,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (8,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (9,'예','USB 2.0','GPS, Glonass','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4G+5GHz','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (10,'예','USB 2.0','GPS, Glonass','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4GHz','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (11,'예','USB 2.0','GPS, Glonass','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4+5GHz','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (12,'예','USB 2.0','GPS, Glonass','3.5mm Stereo','아니오','802.11 a/b/g/n/ac 2.4+5GHz, HT40','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (13,'아니오','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 b/g/n/ac 2.4GHz','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (14,'예','USB 2.0','GPS, Glonass','3.5mm Stereo','아니오','802.11 b/g/n 2.4GHz','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (15,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','아니오','802.11 b/g/n 2.4GHz','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (16,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','예','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','KIES');
insert into spec_connect values (17,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','예','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','KIES');
insert into spec_connect values (18,'예','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','예','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','예','Bluetooth v4.1','예','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','KIES');
insert into spec_connect values (19,'','','A-GPS(Assisted GPS), GLONASS, iBeacon 위치 정밀 감지 기능','','','MIMO 방식의 802.11a/b/g/n/ac Wi-Fi ','예','Bluetooth v4.2','예','','');
insert into spec_connect values (20,'','','A-GPS(Assisted GPS), GLONASS, iBeacon 위치 정밀 감지 기능','','','MIMO 방식의 802.11a/b/g/n/ac Wi-Fi ','예','Bluetooth v4.2','예','','');
insert into spec_connect values (21,'','','A-GPS(Assisted GPS), GLONASS, iBeacon 위치 정밀 감지 기능','','','MIMO 방식의 802.11a/b/g/n/ac Wi-Fi ','예','Bluetooth v4.2','예','','');
insert into spec_connect values (22,'','','A-GPS(Assisted GPS), GLONASS, iBeacon 위치 정밀 감지 기능','','','MIMO 방식의 802.11a/b/g/n/ac Wi-Fi ','예','Bluetooth v4.2','예','','');
insert into spec_connect values (23,'','','A-GPS(Assisted GPS), GLONASS, iBeacon 위치 정밀 감지 기능','','','MIMO 방식의 802.11a/b/g/n/ac Wi-Fi ','예','Bluetooth v4.2','예','','');
insert into spec_connect values (24,'','','A-GPS(Assisted GPS), GLONASS, iBeacon 위치 정밀 감지 기능','','','MIMO 방식의 802.11a/b/g/n/ac Wi-Fi ','예','Bluetooth v4.2','예','','');
insert into spec_connect values (25,'','','예','','','','예','예','예','','');
insert into spec_connect values (26,'','','예','','','','예','예','예','','');
insert into spec_connect values (27,'','','예','','','','예','예','예','','');
insert into spec_connect values (28,'','','예','','','','예','예','예','','');
insert into spec_connect values (29,'','','예','','','','예','예','예','','');
insert into spec_connect values (30,'','','예','','','','예','예','예','','');
insert into spec_connect values (31,'','','예','','','','예','예','예','','');
insert into spec_connect values (32,'','','예','','','','예','예','예','','');
insert into spec_connect values (33,'','','예','','','','예','예','예','','');
insert into spec_connect values (34,'','','예','','','','예','예','예','','');

--운영체제, 기본사양, 센서, 외관사양
create table spec_specifications(
	no number primary key,
	os varchar2(50),
	color varchar2(200),
	form varchar2(50),
	phone_size varchar2(50),
	weight varchar2(50),
	sensor varchar2(200),
	foreign key(no) references ph_phone(no)
);

insert into spec_specifications values (1,'Android','블랙 오닉스, 블루 코랄, 실버 티타늄, 핑크 골드, 골드 플래티넘, 화이트펄','터치 바','150.9 x 72.6 x 7.7','157','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (2,'Android','블랙 오닉스','터치 바','150.9 x 72.6 x 7.7','157','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (3,'Android','블랙 오닉스','터치 바','150.9 x 72.6 x 7.7','157','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (4,'Android','핑크 골드, 블랙, 실버 티탄, 골드, 화이트, 마샨 핑크','터치 바','142.4 x 69.6 x 7.9','152','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (5,'Android','마샨 핑크, 블랙, 실버 티탄, 골드, 화이트','터치 바','153.2 x 76.1 x 7.6','171','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (6,'Android','블랙, 골드','터치 바','154.4 x 75.8 x 6.9','153','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (7,'Android','골드 플래티넘, 블랙, 그린 에메랄드, 화이트','터치 바','142.1 x 70.1 x 7.0','132','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (8,'Android','블랙 사파이어, 블루 사파이어, 골드, 화이트','터치 바','143.4 x 70.5 x 6.8','138','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (9,'Android', '화이트, 화이트블루, 핑크골드','터치 바','156.6 x 76.8 x 7.2','182','가속도 센서, 지문 센서, 지자기 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (10,'Android', '블랙, 마샨핑크, 화이트','터치 바','134.5 x 65.2 x 7.3','132','가속도 센서, 지자기 센서, 홀 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (11,'Android', '블랙, 마샨핑크, 화이트','터치 바','144.8 x 71.0 x 7.3','155','가속도 센서, 지문센서, 지자기 센서, 홀 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (12,'Android', '블랙, 마샨핑크, 화이트','터치 바','151.5 x 74.1 x 7.3','172','가속도 센서, 지문센서, 지자기 센서, 홀 센서, 근접 센서, RGB 광 센서');
insert into spec_specifications values (13,'Android', '화이트','터치 바','142.3 x 71.0 x 7.9','138','가속도 센서, 근접 센서');
insert into spec_specifications values (14,'Android', '화이트, 블랙','터치 바','145.8 x 72.3 x 8.1','158','가속도 센서, 홀 센서, 근접 센서');
insert into spec_specifications values (15,'Android', '골드, 블랙','터치 바','151.8 x 76.0 x 7.8','169','가속도 센서, 홀 센서, 근접 센서');
insert into spec_specifications values (16,'Android', '화이트, 블랙','터치 바','151.3 x 82.4 x 8.3','174','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 조도 센서, 근접 센서, UV 센서, RGB 센서, 제스처 센서');
insert into spec_specifications values (17,'Android', '화이트, 블랙, 실버, 핑크, 레드','터치 바','153.5 x 78.6 x 8.5','176','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 조도 센서, 근접 센서, UV 센서, RGB 센서, 제스처 센서');
insert into spec_specifications values (18,'Android', '화이트, 블랙, 실버, 핑크, 레드','터치 바','153.5 x 78.6 x 8.5','176','가속도 센서, 기압 센서, 지문 센서, 자이로 센서, 지자기 센서, 홀 센서, 심박수 측정 센서, 조도 센서, 근접 센서, UV 센서, RGB 센서, 제스처 센서');
insert into spec_specifications values (19,'iOS 10', '로즈 골드, 골드, 실버, 블랙, 제트 블랙','바','138.3 x 67.1 x 7.1','138','Touch ID 지문 센서, 기압계, 3축 자이로, 가속도계, 근접 센서, 주변광 센서');
insert into spec_specifications values (20,'iOS 10', '로즈 골드, 골드, 실버, 블랙, 제트 블랙','바','158.2 x 77.9 x 7.3','188','Touch ID 지문 센서, 기압계, 3축 자이로, 가속도계, 근접 센서, 주변광 센서');
insert into spec_specifications values (21,'iOS 9', '로즈 골드, 골드, 실버, 블랙, 제트 블랙','바','138.3 x 67.1 x 7.1','143','Touch ID 지문 센서, 기압계, 3축 자이로, 가속도계, 근접 센서, 주변광 센서');
insert into spec_specifications values (22,'iOS 9', '로즈 골드, 골드, 실버, 블랙, 제트 블랙','바','158.2 x 77.9 x 7.3','192','Touch ID 지문 센서, 기압계, 3축 자이로, 가속도계, 근접 센서, 주변광 센서');
insert into spec_specifications values (23,'iOS 9', '골드, 실버, 스페이스 그레이','바','158.2 x 77.9 x 7.3','192','Touch ID 지문 센서, 기압계, 3축 자이로, 가속도계, 근접 센서, 주변광 센서');
insert into spec_specifications values (24,'iOS 9', '골드, 실버, 스페이스 그레이,로즈골드','바','123.8 x 58.6 x 7.6','113','Touch ID 지문 센서, 기압계, 3축 자이로, 가속도계, 근접 센서, 주변광 센서');
insert into spec_specifications values (25,'Android', '티탄, 실버, 핑크','터치 정전식','159.7 x 78.61 x 7.6','173','');
insert into spec_specifications values (26,'Android', '럭스 화이트, 모던 베이지, 오션 블루','터치 정전식','159.6 x 79.3 x 8.6','192','');
insert into spec_specifications values (27,'Android', '실버, 티탄, 골드, 핑크','터치 정전식','149.4 x 73.9 x 7.7','159','');
insert into spec_specifications values (28,'Android', '세라믹 화이트, 메탈릭 그레이, 천연 가죽 브라운, 천연 가죽 블랙','터치 정전식','148.9 x 76.1 x 9.8','155','');
insert into spec_specifications values (29,'Android', '화이트, 티탄','터치 정전식','154.3 x 79.2 x 9.6','163','');
insert into spec_specifications values (30,'Android', '플래티넘 실버, 플라멩고 레드','터치 정전식','149.1 x 75.3 x 7.1~9.4','152','');
insert into spec_specifications values (31,'Android', '화이트, 블랙','터치 정전식','157.8 x 81.8 x 9.45','182','');
insert into spec_specifications values (32,'Android', '티탄, 화이트','터치 정전식','141 x 71.6 x 9.8','146.8','');
insert into spec_specifications values (33,'Android', '티탄, 화이트','터치 정전식','146.3 x 74.6 x 9.1','154','');
insert into spec_specifications values (34,'Android', '메탈릭 블랙, 실크 화이트, 샤인 골드','터치 정전식','146.3 x 74.6 x 8.95','151','');

--배터리
create table spec_battery(
	no number primary key,
	internet_use_3g varchar2(50),
	internet_use_lte varchar2(50),
	internet_use_wifi varchar2(50),
	video_play varchar2(50),
	battery_capacity varchar2(50),
	change_possible varchar2(50),
	audio_play varchar2(50),
	audio_play_ondisplay varchar2(50),
	continuous_call varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into spec_battery values (1,'최대12','최대15','최대16','최대18','3600','아니오','최대62','최대81','최대27');
insert into spec_battery values (2,'최대12','최대15','최대16','최대18','3600','아니오','최대62','최대81','최대27');
insert into spec_battery values (3,'최대12','최대15','최대16','최대18','3600','아니오','최대62','최대81','최대27');
insert into spec_battery values (4,'최대11','최대13','최대15','최대16','3000','아니오','최대46','최대65','최대22');
insert into spec_battery values (5,'최대10','최대11','최대13','최대15','3000','아니오','최대64','','최대22');
insert into spec_battery values (6,'최대10','최대11','최대12','최대15','3000','아니오','최대66','','최대20');
insert into spec_battery values (7,'최대10','최대11','최대12','최대13','2600','아니오','최대50','','최대18');
insert into spec_battery values (8,'최대10','최대11','최대12','최대13','2550','아니오','최대49','','최대17');
insert into spec_battery values (9,'최대11','최대13','최대14','최대17','3300','아니오','최대44','최대60','최대22');
insert into spec_battery values (10,'최대12','최대13','최대15','최대14','2300','아니오','최대58','','최대15');
insert into spec_battery values (11,'최대14','최대14','최대16','최대14','2900','아니오','최대75','','최대18');
insert into spec_battery values (12,'최대14','최대14','최대17','최대15','3300','아니오','최대78','','최대19');
insert into spec_battery values (13,'최대9','최대10','최대12','최대14','2600','','최대62','','최대19');
insert into spec_battery values (14,'최대11','최대12','최대14','최대16','3100','예','최대75','','최대21');
insert into spec_battery values (15,'최대9','최대12','최대14','최대20','3300','예','최대86','','최대24');
insert into spec_battery values (16,'최대9','최대10','최대11','최대21','3000','예','최대11','','최대18');
insert into spec_battery values (17,'최대10','최대11','최대12','최대12','3220','예','최대53','','최대20');
insert into spec_battery values (18,'최대10','최대11','최대12','최대12','3220','예','최대53','','최대19');
insert into spec_battery values (19,'최대12','최대12','최대14','최대13','','','최대40','','최대14');
insert into spec_battery values (20,'최대13','최대13','최대15','최대14','','','최대60','','최대21');
insert into spec_battery values (21,'최대10','최대10','최대11','최대11','','','최대50','','최대14');
insert into spec_battery values (22,'최대12','최대12','최대12','최대14','','','최대80','','최대24');
insert into spec_battery values (23,'최대12','최대12','최대12','최대14','','','최대80','','최대24');
insert into spec_battery values (24,'최대12','최대13','최대13','최대13','','','최대50','','최대14');
insert into spec_battery values (25,'','','','','3200','','','','최대16');
insert into spec_battery values (26,'','','','','3000','','','','최대14');
insert into spec_battery values (27,'','','','','2800','','','','최대14');
insert into spec_battery values (28,'','','','','3000','','','','최대14');
insert into spec_battery values (29,'','','','','3000','','','','최대13');
insert into spec_battery values (30,'','','','','3000','','','','최대13');
insert into spec_battery values (31,'','','','','3000 X 2(착탈식)','','','','최대13');
insert into spec_battery values (32,'','','','','2610 (착탈식)','','','','최대12');
insert into spec_battery values (33,'','','','','3000 (착탈식)','','','','최대17');
insert into spec_battery values (34,'','','','','3000 (착탈식)','','','','최대17');

--오디오/비디오
create table spec_audio(
	no number primary key,
	video_format varchar2(2000),
	video_resoluation varchar2(100),
	audio_format varchar2(500),
	video_detail LONG,
	facetime varchar2(500),
	foreign key(no) references ph_phone(no)
);

insert into spec_audio values (1,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @60fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (2,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @60fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (3,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @60fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (4,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @60fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (5,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (6,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (7,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (8,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (9,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (10,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','FHD (1920 x 1080) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (11,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','FHD (1920 x 1080) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (12,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','FHD (1920 x 1080) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (13,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','FHD (1920 x 1080) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (14,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','FHD (1920 x 1080) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (15,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','FHD (1920 x 1080) @30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (16,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160)@30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (17,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160)@30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (18,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160)@30fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA','','');
insert into spec_audio values (19,'AirPlay 미러링, 사진, 오디오, 동영상을 Apple TV로 출력(2세대 이상)<br>동영상 미러링 및 동영상 출력 지원 : Lightning Digital AV 어댑터 및 Lightning-VGA 어댑터 사용 시 최대 1080p(어댑터 별매)<br>
동영상 포맷 지원 : 최대 4K의 H.264 동영상, 초당 30프레임, High Profile level 4.2(최대 160Kbps의 AAC-LC 오디오), 48kHz, 최대 1008Kbps의 스테레오 오디오 <br>또는 Dolby Audio, 48kHz, .4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 2.5Mbps의 MPEG-4 동영상, 640 x 480 픽셀, 초당 30프레임, Simple Profile(채널당 최대 160Kbps의 AAC-LC 오디오), 48kHz, 1008Kbps의 스테레오 오디오<br> 또는 Dolby Audio, 48kHz, .m4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 35Mbps의 Motion JPEG(M-JPEG), 1280 x 720 픽셀, 초당 30프레임, ulaw 오디오, .avi 파일 포맷 PCM 스테레오 오디오','','지원되는 오디오 포맷 : AAC(8~320Kbps), 복사 방지된 AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3),<br>
Dolby Digital Plus(E-AC-3), Audible(포맷 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV','4K 동영상 촬영(초당 30 프레임)<br> 1080p HD 동영상 촬영(초당 30 또는 60 프레임)<br> 
720p HD 동영상 촬영(초당 30 프레임)<br> 동영상을 위한 광학 이미지 흔들림 보정(OIS)<br> 쿼드-LED True Tone 플래시<br> 슬로 모션 동영상 지원(1080p는 초당 120 프레임, 720p는 초당 240 프레임)<br> 타임랩스 동영상(동영상 흔들림 보정 포함)<br> 
시네마틱 동영상 흔들림 보정(1080p 및 720p)<br> 연속 오토포커스 동영상<br> 몸과 얼굴 인식<br> 노이즈 감소<br> 4K 동영상 촬영 중 800만 화소 사진 촬영<br> 재생 중 줌<br> 동영상 위치 표시 기능','700만 화소 사진<br> 1080p HD 동영상 촬영<br> 
Retina Flash<br> f/2.2 조리개<br> 사진 및 Live Photos 촬영 시 넓은 색상 영역 포착<br> 자동 HDR<br> 후면 조명 센서<br> 몸과 얼굴 인식<br> 자동 흔들림 보정<br> 고속 연사 모드<br> 노출 조절<br> 타이머 모드');
insert into spec_audio values (20,'AirPlay 미러링, 사진, 오디오, 동영상을 Apple TV로 출력(2세대 이상)<br>동영상 미러링 및 동영상 출력 지원: Lightning Digital AV 어댑터 및 Lightning-VGA 어댑터 사용 시 최대 1080p(어댑터 별매)<br>
동영상 포맷 지원: 최대 4K의 H.264 동영상, 초당 30프레임, High Profile level 4.2(최대 160Kbps의 AAC-LC 오디오), 48kHz, 최대 1008Kbps의 스테레오 오디오 또는 Dolby Audio, 48kHz, .4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 2.5Mbps의 MPEG-4 동영상, 640 x 480 픽셀, 초당 30프레임, Simple Profile(채널당 최대 160Kbps의 AAC-LC 오디오), 48kHz, 1008Kbps의 스테레오 오디오 또는 Dolby Audio, 48kHz, .m4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 35Mbps의 Motion JPEG(M-JPEG), 1280 x 720 픽셀, 초당 30프레임, ulaw 오디오, .avi 파일 포맷 PCM 스테레오 오디오','','지원되는 오디오 포맷: AAC(8~320Kbps), 복사 방지된 AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3), 
Dolby Digital Plus(E-AC-3), Audible(포맷 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV','4K 동영상 촬영(초당 30 프레임)<br> 1080p HD 동영상 촬영(초당 30 또는 60 프레임)<br> 
720p HD 동영상 촬영(초당 30 프레임)<br> 동영상을 위한 광학 이미지 흔들림 보정(OIS)<br> 광학 줌 2배, 디지털 줌 6배<br> 쿼드-LED True Tone 플래시<br> 슬로 모션 동영상 지원(1080p는 초당 120 프레임, 720p는 초당 240 프레임)<br> 타임랩스 동영상(동영상 흔들림 보정 포함)<br> 
시네마틱 동영상 흔들림 보정(1080p 및 720p)<br> 연속 오토포커스 동영상<br> 몸과 얼굴 인식<br> 노이즈 감소<br> 4K 동영상 촬영 중 800만 화소 사진 촬영<br> 재생 중 줌<br> 동영상 위치 표시 기능','700만 화소 사진<br> 1080p HD 동영상 촬영<br> 
Retina Flash<br> f/2.2 조리개<br> 사진 및 Live Photos 촬영 시 넓은 색상 영역 포착<br> 자동 HDR<br> 후면 조명 센서<br> 몸과 얼굴 인식<br> 자동 흔들림 보정<br> 고속 연사 모드<br> 노출 조절<br> 타이머 모드');
insert into spec_audio values (21,'AirPlay 미러링, 사진, 오디오, 동영상을 Apple TV로 출력(2세대 이상)<br> 동영상 미러링 및 동영상 출력 지원: Lightning Digital AV 어댑터 및 Lightning-VGA 어댑터 사용 시 최대 1080p(어댑터 별매)<br> 
동영상 포맷 지원: 최대 4K의 H.264 동영상, 초당 30프레임, High Profile level 4.2(최대 160Kbps의 AAC-LC 오디오), 48kHz, 최대 1008Kbps의 스테레오 오디오 또는 Dolby Audio, 48kHz, .4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 2.5Mbps의 MPEG-4 동영상, 640 x 480 픽셀, 초당 30프레임, Simple Profile(채널당 최대 160Kbps의 AAC-LC 오디오), 48kHz, 1008Kbps의 스테레오 오디오 또는 Dolby Audio, 48kHz, .m4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 35Mbps의 Motion JPEG(M-JPEG), 1280 x 720 픽셀, 초당 30프레임, ulaw 오디오, .avi 파일 포맷 PCM 스테레오 오디오','','지원되는 오디오 포맷: AAC(8~320Kbps), 복사 방지된 AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3), 
Dolby Digital Plus(E-AC-3), Audible(포맷 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV<br> 최대 음량 제한 설정 가능',
'4K 동영상 촬영(초당 30 프레임)<br> 1080p HD 동영상 촬영(초당 30 또는 60 프레임)<br> 720p HD 동영상 촬영(초당 30 프레임)<br> 
True Tone 플래시<br> 슬로 모션 동영상 지원(1080p는 초당 120 프레임, 720p는 초당 240 프레임)<br> 타임랩스 동영상(동영상 흔들림 보정 포함)<br> 시네마틱 동영상 흔들림 보정(1080p 및 720p)<br> 
연속 오토포커스 동영상<br> 노이즈 감소<br> 4K 동영상 촬영 중 800만 화소 사진 촬영<br> 재생 중 줌<br> 3배 디지털 줌<br> 얼굴 인식<br> 동영상 위치 표시 기능','v500만 화소 사진<br> 720p HD 동영상 촬영<br> Retina Flash<br> 
f/2.2 조리개<br> 사진 및 동영상을 위한 자동 HDR<br> 후면 조명 센서<br> 노출 조절<br> 고속 연사 모드<br> 타이머 모드<br> 얼굴 인식');
insert into spec_audio values (22,'AirPlay 미러링, 사진, 오디오, 동영상을 Apple TV로 출력(2세대 이상)<br> 동영상 미러링 및 동영상 출력 지원: Lightning Digital AV 어댑터 및 Lightning-VGA 어댑터 사용 시 최대 1080p(어댑터 별매)<br> 
동영상 포맷 지원: 최대 4K의 H.264 동영상, 초당 30프레임, High Profile level 4.2(최대 160Kbps의 AAC-LC 오디오), 48kHz, 최대 1008Kbps의 스테레오 오디오 또는 Dolby Audio, 48kHz, .4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 2.5Mbps의 MPEG-4 동영상, 640 x 480 픽셀, 초당 30프레임, Simple Profile(채널당 최대 160Kbps의 AAC-LC 오디오), 48kHz, 1008Kbps의 스테레오 오디오 또는 Dolby Audio, 48kHz, .m4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 35Mbps의 Motion JPEG(M-JPEG), 1280 x 720 픽셀, 초당 30프레임, ulaw 오디오, .avi 파일 포맷 PCM 스테레오 오디오','','지원되는 오디오 포맷: AAC(8~320Kbps), 복사 방지된 AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3), 
Dolby Digital Plus(E-AC-3), Audible(포맷 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV<br> 최대 음량 제한 설정 가능',
'4K 동영상 촬영(초당 30 프레임)<br> 1080p HD 동영상 촬영(초당 30 또는 60 프레임)<br> 720p HD 동영상 촬영(초당 30 프레임)<br> 동영상을 위한 광학 이미지 흔들림 보정(iPhone 6s Plus만 해당)<br> 
True Tone 플래시<br> 슬로 모션 동영상 지원(1080p는 초당 120 프레임, 720p는 초당 240 프레임)<br> 타임랩스 동영상(동영상 흔들림 보정 포함)<br> 시네마틱 동영상 흔들림 보정(1080p 및 720p)<br> 
연속 오토포커스 동영상<br> 노이즈 감소<br> 4K 동영상 촬영 중 800만 화소 사진 촬영<br> 재생 중 줌<br> 3배 디지털 줌<br> 얼굴 인식<br> 동영상 위치 표시 기능','v500만 화소 사진<br> 720p HD 동영상 촬영<br> Retina Flash<br> 
f/2.2 조리개<br> 사진 및 동영상을 위한 자동 HDR<br> 후면 조명 센서<br> 노출 조절<br> 고속 연사 모드<br> 타이머 모드<br> 얼굴 인식');
insert into spec_audio values (23,'AirPlay 미러링, 사진, 오디오, 동영상을 Apple TV로 출력(2세대 이상)<br> 동영상 미러링 및 동영상 출력 지원: Lightning Digital AV 어댑터 및 Lightning-VGA 어댑터 사용 시 최대 1080p(어댑터 별매)<br> 
동영상 포맷 지원: 최대 4K의 H.264 동영상, 초당 30프레임, High Profile level 4.2(최대 160Kbps의 AAC-LC 오디오), 48kHz, 최대 1008Kbps의 스테레오 오디오 또는 Dolby Audio, 48kHz, .4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 2.5Mbps의 MPEG-4 동영상, 640 x 480 픽셀, 초당 30프레임, Simple Profile(채널당 최대 160Kbps의 AAC-LC 오디오), 48kHz, 1008Kbps의 스테레오 오디오 또는 Dolby Audio, 48kHz, .m4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 35Mbps의 Motion JPEG(M-JPEG), 1280 x 720 픽셀, 초당 30프레임, ulaw 오디오, .avi 파일 포맷 PCM 스테레오 오디오','','지원되는 오디오 포맷: AAC(8~320Kbps), 복사 방지된 AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3), 
Dolby Digital Plus(E-AC-3), Audible(포맷 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV<br> 최대 음량 제한 설정 가능',
'4K 동영상 촬영(초당 30 프레임)<br> 1080p HD 동영상 촬영(초당 30 또는 60 프레임)<br> 720p HD 동영상 촬영(초당 30 프레임)<br> 동영상을 위한 광학 이미지 흔들림 보정(iPhone 6s Plus만 해당)<br> 
True Tone 플래시<br> 슬로 모션 동영상 지원(1080p는 초당 120 프레임, 720p는 초당 240 프레임)<br> 타임랩스 동영상(동영상 흔들림 보정 포함)<br> 시네마틱 동영상 흔들림 보정(1080p 및 720p)<br> 
연속 오토포커스 동영상<br> 노이즈 감소<br> 4K 동영상 촬영 중 800만 화소 사진 촬영<br> 재생 중 줌<br> 3배 디지털 줌<br> 얼굴 인식<br> 동영상 위치 표시 기능','v500만 화소 사진<br> 720p HD 동영상 촬영<br> Retina Flash<br> 
f/2.2 조리개<br> 사진 및 동영상을 위한 자동 HDR<br> 후면 조명 센서<br> 노출 조절<br> 고속 연사 모드<br> 타이머 모드<br> 얼굴 인식');
insert into spec_audio values (24,'AirPlay 미러링, 사진, 오디오, 동영상을 Apple TV로 출력(2세대 이상)<br> 동영상 미러링 및 동영상 출력 지원: Lightning Digital AV 어댑터 및 Lightning-VGA 어댑터 사용 시 최대 1080p(어댑터 별매)<br> 
동영상 포맷 지원: 최대 4K의 H.264 동영상, 초당 30프레임, High Profile level 4.2(최대 160Kbps의 AAC-LC 오디오), 48kHz, 최대 1008Kbps의 스테레오 오디오 또는 Dolby Audio, 48kHz, .4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 2.5Mbps의 MPEG-4 동영상, 640 x 480 픽셀, 초당 30프레임, Simple Profile(채널당 최대 160Kbps의 AAC-LC 오디오), 48kHz, 1008Kbps의 스테레오 오디오 또는 Dolby Audio, 48kHz, .m4v, .mp4, .mov 파일 포맷 스테레오 또는 멀티채널 오디오, 
최대 35Mbps의 Motion JPEG(M-JPEG), 1280 x 720 픽셀, 초당 30프레임, ulaw 오디오, .avi 파일 포맷 PCM 스테레오 오디오','','지원되는 오디오 포맷: AAC(8~320Kbps), 복사 방지된 AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3), 
Dolby Digital Plus(E-AC-3), Audible(포맷 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV<br> 최대 음량 제한 설정 가능',
'4K 동영상 촬영(초당 30 프레임)<br> 1080p HD 동영상 촬영(초당 30 또는 60 프레임)<br> 720p HD 동영상 촬영(초당 30 프레임)<br> 동영상을 위한 광학 이미지 흔들림 보정(iPhone 6s Plus만 해당)<br> 
True Tone 플래시<br> 슬로 모션 동영상 지원(1080p는 초당 120 프레임, 720p는 초당 240 프레임)<br> 타임랩스 동영상(동영상 흔들림 보정 포함)<br> 시네마틱 동영상 흔들림 보정(1080p 및 720p)<br> 
연속 오토포커스 동영상<br> 노이즈 감소<br> 4K 동영상 촬영 중 800만 화소 사진 촬영<br> 재생 중 줌<br> 3배 디지털 줌<br> 얼굴 인식<br> 동영상 위치 표시 기능','v500만 화소 사진<br> 720p HD 동영상 촬영<br> Retina Flash<br> 
f/2.2 조리개<br> 사진 및 동영상을 위한 자동 HDR<br> 후면 조명 센서<br> 노출 조절<br> 고속 연사 모드<br> 타이머 모드<br> 얼굴 인식');

--서비스
create table spec_service(
	no number primary key,
	gear_support varchar2(200),
	svoice varchar2(50),
	mobiletv varchar2(50),
	siri LONG,
	waterproof varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into spec_service values (1,'기어 서클(매니저 서포트), 기어 핏, 기어1, 기어2, 기어2 네오, 기어 S, 기어 S2, 기어 VR','예','예','','');
insert into spec_service values (2,'기어 서클(매니저 서포트), 기어 핏, 기어1, 기어2, 기어2 네오, 기어 S, 기어 S2, 기어 VR','예','예','','');
insert into spec_service values (3,'기어 서클(매니저 서포트), 기어 핏, 기어1, 기어2, 기어2 네오, 기어 S, 기어 S2, 기어 VR','예','예','','');
insert into spec_service values (4,'기어 서클(매니저 서포트), 기어 핏, 기어1, 기어2, 기어2 네오, 기어 S, 기어 S2, 기어 VR','예','예','','');
insert into spec_service values (5,'기어 서클(매니저 서포트), 기어 핏, 기어','예','예','','');
insert into spec_service values (6,'기어 서클(매니저 서포트), 기어 핏, 기어','예','예','','');
insert into spec_service values (7,'기어 서클(매니저 서포트), 기어 핏, 기어','예','예','','');
insert into spec_service values (8,'기어 서클(매니저 서포트), 기어 핏, 기어','예','예','','');
insert into spec_service values (9,'기어 서클(매니저 서포트), 기어 핏, 기어 핏2, 기어S2','예','예','','');
insert into spec_service values (10,'','예','아니오','','');
insert into spec_service values (11,'기어 서클(매니저 서포트), 기어 핏, 기어','예','예','','');
insert into spec_service values (12,'기어 서클(매니저 서포트), 기어 핏, 기어','예','예','','');
insert into spec_service values (13,'기어 서클(매니저 서포트), 기어S2','아니요','아니요','','');
insert into spec_service values (14,'기어 서클(매니저 서포트), 기어S2','아니요','예','','');
insert into spec_service values (15,'기어 서클(매니저 서포트), 기어S2','아니요','예','','');
insert into spec_service values (16,'기어 서클(매니저 서포트), 기어 핏 매니저, 기어 매니저','예','예','','');
insert into spec_service values (17,'기어 서클(매니저 서포트), 기어 핏 매니저, 기어 매니저, 기어 VR','예','예','','');
insert into spec_service values (18,'기어 서클(매니저 서포트), 기어 핏 매니저, 기어 매니저, 기어 VR','예','예','','');
insert into spec_service values (19,'','','','음성으로 메시지 전송, 미리 알림 설정 외 다양한 기능 실행 가능<br> 능동적인 제안 기능<br> 핸즈프리 사용<br> 노래 듣고 제목 알려주기','IEC 규격 60529 하의 IP67 등급 획득');
insert into spec_service values (20,'','','','음성으로 메시지 전송, 미리 알림 설정 외 다양한 기능 실행 가능<br> 능동적인 제안 기능<br> 핸즈프리 사용<br> 노래 듣고 제목 알려주기','IEC 규격 60529 하의 IP67 등급 획득');
insert into spec_service values (21,'','','','음성으로 메시지 전송, 미리 알림 설정 외 다양한 기능 실행 가능<br> 능동적인 제안 기능<br> 핸즈프리 사용<br> 노래 듣고 제목 알려주기','');
insert into spec_service values (22,'','','','음성으로 메시지 전송, 미리 알림 설정 외 다양한 기능 실행 가능<br> 능동적인 제안 기능<br> 핸즈프리 사용<br> 노래 듣고 제목 알려주기','');
insert into spec_service values (23,'','','','음성으로 메시지 전송, 미리 알림 설정 외 다양한 기능 실행 가능<br> 능동적인 제안 기능<br> 핸즈프리 사용<br> 노래 듣고 제목 알려주기','');
insert into spec_service values (24,'','','','음성으로 메시지 전송, 미리 알림 설정 외 다양한 기능 실행 가능<br> 능동적인 제안 기능<br> 핸즈프리 사용<br> 노래 듣고 제목 알려주기','');
insert into spec_service values (25,'','','예','','');
insert into spec_service values (26,'','','예','','');
insert into spec_service values (27,'','','예','','');
insert into spec_service values (28,'','','예','','');
insert into spec_service values (29,'','','예','','');
insert into spec_service values (30,'','','예','','');
insert into spec_service values (31,'','','예','','');
insert into spec_service values (32,'','','예','','');
insert into spec_service values (33,'','','예','','');
insert into spec_service values (34,'','','예','','');

