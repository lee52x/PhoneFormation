--�������
drop table ph_reply;
drop table ph_ono;
drop table ph_boardgood;
drop table ph_board;
drop table ph_boardtype;

--������

drop table ph_visit;
drop table ph_admin;
drop table purchase_request;
drop table ph_repair;
drop table repair_request;
drop table ph_repairBoard;
drop table ph_client;
drop table ph_slide;


--����
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

--������
drop table ph_member;
drop table ph_business;


--�� ������
create sequence ph_phone_seq
	start with 1
	increment by 1
	nocycle
	nocache;

--�ڵ��� ����, �ڵ�����, �ڵ�������, �������, �����
create table ph_phone(
	no number primary key,
	name varchar2(100) unique,
	image LONG not null,
	manufacture varchar2(15) not null,
	release_date varchar2(30) not null
);

--samsung
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge', '/resources/images/phone/GalaxyS7edge_ȭ��Ʈ��.png', 'samsung', '2016��11��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge Olympic Games Limited Edition', '/resources/images/phone/GalaxyS7edgeOlympic_��.png', 'samsung', '2016��07��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge Injustice Edition', '/resources/images/phone/GalaxyS7edgeInjustice_��.png', 'samsung', '2016��06��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7', '/resources/images/phone/GalaxyS7_�����н�.png', 'samsung', '2016��07��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note5', '/resources/images/phone/Galaxynote5_����÷�Ƽ��.png', 'samsung', '2015��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6 edge plus', '/resources/images/phone/GalaxyS6_����÷�Ƽ��.png', 'samsung', '2015��08��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6 edge', '/resources/images/phone/GalaxyS6edge_����÷�Ƽ��.png', 'samsung', '2015��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6', '/resources/images/phone/GalaxyS6_ȭ��Ʈ��.png', 'samsung', '2015��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A8(2016)', '/resources/images/phone/GalaxyA8(2016)_�ǹ�.png', 'samsung', '2016��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A3(2016)', '/resources/images/phone/GalaxyA3(2016)_��.png', 'samsung', '2016��03��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A5(2016)', '/resources/images/phone/GalaxyA5(2016)_��.png', 'samsung', '2016��01��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A7(2016)', '/resources/images/phone/GalaxyA7(2016)_��.png', 'samsung', '2016��01��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J3(2016)', '/resources/images/phone/GalaxyJ3(2016)_ȭ��Ʈ.png', 'samsung', '2016��05��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J5(2016)', '/resources/images/phone/GalaxyJ5(2016)_��.png', 'samsung', '2016��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J7(2016)', '/resources/images/phone/GalaxyJ7(2016)_��.png', 'samsung', '2016��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note edge', '/resources/images/phone/GalaxynoteEdge_ȭ��Ʈ.png', 'samsung', '2014��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note4 S-LTE', '/resources/images/phone/Galaxynote4SLTE_ȭ��Ʈ.png', 'samsung', '2015��01��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note4', '/resources/images/phone/Galaxynote4_ȭ��Ʈ.png', 'samsung', '2014��09��');

--apple
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 7', '/resources/images/phone/iPhone7_�ǹ�.png', 'apple', '2016��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 7 plus', '/resources/images/phone/iPhone7Plus_�ǹ�.png', 'apple', '2016��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6s', '/resources/images/phone/iPhone6s_�ǹ�.png', 'apple', '2015��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6s Plus', '/resources/images/phone/iPhone6sPlus_�ǹ�.png', 'apple', '2015��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6 Plus', '/resources/images/phone/iPhone6Plus_�ǹ�.png', 'apple', '2014��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhoneSE', '/resources/images/phone/iPhoneSE_������.png', 'apple', '2016��05��');

--lg
insert into ph_phone values (ph_phone_seq.nextval, 'V20', '/resources/images/phone/V20_�ǹ�.png', 'lg', '2016��09��');
insert into ph_phone values (ph_phone_seq.nextval, 'V10', '/resources/images/phone/V10_����ȭ��Ʈ.png', 'lg', '2015��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'G5', '/resources/images/phone/G5_�ǹ�.png', 'lg', '2016��03��');
insert into ph_phone values (ph_phone_seq.nextval, 'G4', '/resources/images/phone/G4_�����ȭ��Ʈ.png', 'lg', '2015��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'GStylo', '/resources/images/phone/GStylo_ȭ��Ʈ.png', 'lg', '2015��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'GFlex2', '/resources/images/phone/GFlex2_�÷�Ƽ�ѽǹ�.png', 'lg', '2015��01��');
insert into ph_phone values (ph_phone_seq.nextval, 'G3Screen', '/resources/images/phone/G3Screen_ȭ��Ʈ.png', 'lg', '2014��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'G3A', '/resources/images/phone/G3A_ȭ��Ʈ.png', 'lg', '2014��08��');
insert into ph_phone values (ph_phone_seq.nextval, 'G3Cat6', '/resources/images/phone/G3Cat6_��ũȭ��Ʈ.png', 'lg', '2014��08��');
insert into ph_phone values (ph_phone_seq.nextval, 'G3', '/resources/images/phone/G3_��ũȭ��Ʈ.png', 'lg', '2014��05��');


drop sequence ph_color_seq;
create sequence ph_color_seq 
start with 1 
increment by 1 
nocache 
nocycle;

--�ڵ��� ����
create table ph_color(
cno number,
no number,
color varchar2(30) not null,
image LONG not null,
primary key(cno)
);
ALTER TABLE ph_color ADD constraint ph_colorforeign_fk foreign key(no) references ph_phone(no) on delete cascade;

--samsung


insert into ph_color values (ph_color_seq.nextval,1, 'ȭ��Ʈ��', '/resources/images/phone/GalaxyS7edge_ȭ��Ʈ��.png');
insert into ph_color values (ph_color_seq.nextval,1, '����ڶ�', '/resources/images/phone/GalaxyS7edge_����ڶ�.png');
insert into ph_color values (ph_color_seq.nextval,1, '�����н�', '/resources/images/phone/GalaxyS7edge_�����н�.png');
insert into ph_color values (ph_color_seq.nextval,1, '����÷�Ƽ��', '/resources/images/phone/GalaxyS7edge_����÷�Ƽ��.png');
insert into ph_color values (ph_color_seq.nextval,1, '�ǹ�ƼŸ��', '/resources/images/phone/GalaxyS7edge_�ǹ�ƼŸ��.png');
insert into ph_color values (ph_color_seq.nextval,1, '��ũ���', '/resources/images/phone/GalaxyS7edge_��ũ���.png');

insert into ph_color values (ph_color_seq.nextval,2, '��', '/resources/images/phone/GalaxyS7edgeOlympic_��.png');

insert into ph_color values (ph_color_seq.nextval,3, '��', '/resources/images/phone/GalaxyS7edgeInjustice_��.png');

insert into ph_color values (ph_color_seq.nextval,4, '�����н�', '/resources/images/phone/GalaxyS7_�����н�.png');
insert into ph_color values (ph_color_seq.nextval,4, 'ȭ��Ʈ��', '/resources/images/phone/GalaxyS7_ȭ��Ʈ��.png');
insert into ph_color values (ph_color_seq.nextval,4, '�ǹ�ƼŸ��', '/resources/images/phone/GalaxyS7_�ǹ�ƼŸ��.png');
insert into ph_color values (ph_color_seq.nextval,4, '����÷�Ƽ��', '/resources/images/phone/GalaxyS7_����÷�Ƽ��.png');
insert into ph_color values (ph_color_seq.nextval,4, '��ũ���', '/resources/images/phone/GalaxyS7_��ũ���.png');
insert into ph_color values (ph_color_seq.nextval,4, '��ũ��μ�', '/resources/images/phone/GalaxyS7_��ũ��μ�.png');

insert into ph_color values (ph_color_seq.nextval,5, '����÷�Ƽ��', '/resources/images/phone/Galaxynote5_����÷�Ƽ��.png');
insert into ph_color values (ph_color_seq.nextval,5, '�������̾�', '/resources/images/phone/Galaxynote5_�������̾�.png');
insert into ph_color values (ph_color_seq.nextval,5, '�ǹ�ƼŸ��', '/resources/images/phone/Galaxynote5_�ǹ�ƼŸ��.png');
insert into ph_color values (ph_color_seq.nextval,5, 'ȭ��Ʈ��', '/resources/images/phone/Galaxynote5_ȭ��Ʈ��.png');
insert into ph_color values (ph_color_seq.nextval,5, '��ũ���', '/resources/images/phone/Galaxynote5_��ũ���.png');

insert into ph_color values (ph_color_seq.nextval,6, '����÷�Ƽ��', '/resources/images/phone/GalaxyS6edgePlus_����÷�Ƽ��.png');
insert into ph_color values (ph_color_seq.nextval,6, '�������̾�', '/resources/images/phone/GalaxyS6edgePlus_�������̾�.png');

insert into ph_color values (ph_color_seq.nextval,7, '����÷�Ƽ��', '/resources/images/phone/GalaxyS6edge_����÷�Ƽ��.png');
insert into ph_color values (ph_color_seq.nextval,7, 'ȭ��Ʈ��', '/resources/images/phone/GalaxyS6edge_ȭ��Ʈ��.png');
insert into ph_color values (ph_color_seq.nextval,7, '�������̾�', '/resources/images/phone/GalaxyS6edge_�������̾�.png');
insert into ph_color values (ph_color_seq.nextval,7, '�׸����޶���', '/resources/images/phone/GalaxyS6edge_�׸����޶���.png');

insert into ph_color values (ph_color_seq.nextval,8, 'ȭ��Ʈ��', '/resources/images/phone/GalaxyS6_ȭ��Ʈ��.png');
insert into ph_color values (ph_color_seq.nextval,8, '�������̾�', '/resources/images/phone/GalaxyS6_�������̾�.png');
insert into ph_color values (ph_color_seq.nextval,8, '����÷�Ƽ��', '/resources/images/phone/GalaxyS6_����÷�Ƽ��.png');
insert into ph_color values (ph_color_seq.nextval,8, '�������̾�', '/resources/images/phone/GalaxyS6_�������̾�.png');

insert into ph_color values (ph_color_seq.nextval,9, '�ǹ�', '/resources/images/phone/GalaxyA8(2016)_�ǹ�.png');
insert into ph_color values (ph_color_seq.nextval,9, '��ũ���', '/resources/images/phone/GalaxyA8(2016)_��ũ���.png');
insert into ph_color values (ph_color_seq.nextval,9, 'ȭ��Ʈ���', '/resources/images/phone/GalaxyA8(2016)_ȭ��Ʈ���.png');

insert into ph_color values (ph_color_seq.nextval,10, '��', '/resources/images/phone/GalaxyA3(2016)_��.png');
insert into ph_color values (ph_color_seq.nextval,10, 'ȭ��Ʈ', '/resources/images/phone/GalaxyA3(2016)_ȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,10, '������ũ', '/resources/images/phone/GalaxyA3(2016)_������ũ.png');

insert into ph_color values (ph_color_seq.nextval,11, '��', '/resources/images/phone/GalaxyA5(2016)_��.png');
insert into ph_color values (ph_color_seq.nextval,11, 'ȭ��Ʈ', '/resources/images/phone/GalaxyA5(2016)_ȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,11, '������ũ', '/resources/images/phone/GalaxyA5(2016)_������ũ.png');

insert into ph_color values (ph_color_seq.nextval,12, '��', '/resources/images/phone/GalaxyA7(2016)_��.png');
insert into ph_color values (ph_color_seq.nextval,12, 'ȭ��Ʈ', '/resources/images/phone/GalaxyA7(2016)_ȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,12, '������ũ', '/resources/images/phone/GalaxyA7(2016)_������ũ.png');

insert into ph_color values (ph_color_seq.nextval,13, 'ȭ��Ʈ', '/resources/images/phone/GalaxyJ3(2016)_ȭ��Ʈ.png');

insert into ph_color values (ph_color_seq.nextval,14, '��', '/resources/images/phone/GalaxyJ5(2016)_��.png');
insert into ph_color values (ph_color_seq.nextval,14, 'ȭ��Ʈ', '/resources/images/phone/GalaxyJ5(2016)_ȭ��Ʈ.png');

insert into ph_color values (ph_color_seq.nextval,15, '���', '/resources/images/phone/GalaxyJ7(2016)_���.png');
insert into ph_color values (ph_color_seq.nextval,15, '��', '/resources/images/phone/GalaxyJ7(2016)_��.png');

insert into ph_color values (ph_color_seq.nextval,16, 'ȭ��Ʈ', '/resources/images/phone/GalaxynoteEdge_ȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,16, '��', '/resources/images/phone/GalaxynoteEdge_��.png');

insert into ph_color values (ph_color_seq.nextval,17, 'ȭ��Ʈ', '/resources/images/phone/Galaxynote4SLTE_ȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,17, '��', '/resources/images/phone/Galaxynote4SLTE_��.png');
insert into ph_color values (ph_color_seq.nextval,17, '�ǹ�', '/resources/images/phone/Galaxynote4SLTE_�ǹ�.png');
insert into ph_color values (ph_color_seq.nextval,17, '��ũ', '/resources/images/phone/Galaxynote4SLTE_��ũ.png');
insert into ph_color values (ph_color_seq.nextval,17, '����', '/resources/images/phone/Galaxynote4SLTE_����.png');

insert into ph_color values (ph_color_seq.nextval,18, 'ȭ��Ʈ', '/resources/images/phone/Galaxynote4_ȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,18, '��', '/resources/images/phone/Galaxynote4_��.png');
insert into ph_color values (ph_color_seq.nextval,18, '���', '/resources/images/phone/Galaxynote4_���.png');
insert into ph_color values (ph_color_seq.nextval,18, '��ũ', '/resources/images/phone/Galaxynote4_��ũ.png');
insert into ph_color values (ph_color_seq.nextval,18, '����', '/resources/images/phone/Galaxynote4_����.png');
insert into ph_color values (ph_color_seq.nextval,18, '���1', '/resources/images/phone/Galaxynote4_���.png');
insert into ph_color values (ph_color_seq.nextval,18, '��ũ2', '/resources/images/phone/Galaxynote4_��ũ.png');
insert into ph_color values (ph_color_seq.nextval,18, '����3', '/resources/images/phone/Galaxynote4_����.png');

--apple
insert into ph_color values (ph_color_seq.nextval,19, '������', '/resources/images/phone/iPhone7_�ε���.png');
insert into ph_color values (ph_color_seq.nextval,19, '���', '/resources/images/phone/iPhone7_���.png');
insert into ph_color values (ph_color_seq.nextval,19, '�ǹ�', '/resources/images/phone/iPhone7_�ǹ�.png');
insert into ph_color values (ph_color_seq.nextval,19, '��', '/resources/images/phone/iPhone7_��.png');
insert into ph_color values (ph_color_seq.nextval,19, '��Ʈ��', '/resources/images/phone/iPhone7_��Ʈ��.png');

insert into ph_color values (ph_color_seq.nextval,20, '������', '/resources/images/phone/iPhone7Plus_������.png');
insert into ph_color values (ph_color_seq.nextval,20, '���', '/resources/images/phone/iPhone7Plus_���.png');
insert into ph_color values (ph_color_seq.nextval,20, '�ǹ�', '/resources/images/phone/iPhone7Plus_�ǹ�.png');
insert into ph_color values (ph_color_seq.nextval,20, '��', '/resources/images/phone/iPhone7Plus_��.png');
insert into ph_color values (ph_color_seq.nextval,20, '��Ʈ��', '/resources/images/phone/iPhone7Plus_��Ʈ��.png');

insert into ph_color values (ph_color_seq.nextval,21, '�����̽��׷���', '/resources/images/phone/iPhone6s_�����̽��׷���.png');
insert into ph_color values (ph_color_seq.nextval,21, '�ǹ�', '/resources/images/phone/iPhone6s_�ǹ�.png');
insert into ph_color values (ph_color_seq.nextval,21, '���', '/resources/images/phone/iPhone6s_���.png');
insert into ph_color values (ph_color_seq.nextval,21, '������', '/resources/images/phone/iPhone6s_������.png');

insert into ph_color values (ph_color_seq.nextval,22, '�����̽��׷���', '/resources/images/phone/iPhone6sPlus_�����̽��׷���.png');
insert into ph_color values (ph_color_seq.nextval,22, '�ǹ�', '/resources/images/phone/iPhone6sPlus_�ǹ�.png');
insert into ph_color values (ph_color_seq.nextval,22, '���', '/resources/images/phone/iPhone6sPlus_���.png');
insert into ph_color values (ph_color_seq.nextval,22, '������', '/resources/images/phone/iPhone6sPlus_������.png');

insert into ph_color values (ph_color_seq.nextval,23, '���', '/resources/images/phone/iPhone6Plus_���.png');
insert into ph_color values (ph_color_seq.nextval,23, '�����̽��׷���', '/resources/images/phone/iPhone6Plus_�����̽��׷���.png');
insert into ph_color values (ph_color_seq.nextval,23, '�ǹ�', '/resources/images/phone/iPhone6Plus_�ǹ�.png');

insert into ph_color values (ph_color_seq.nextval,24, '�����̽��׷���', '/resources/images/phone/iPhoneSE_�����̽��׷���.png');
insert into ph_color values (ph_color_seq.nextval,24, '������', '/resources/images/phone/iPhoneSE_������.png');

--lg
insert into ph_color values (ph_color_seq.nextval,25, 'Ƽź', '/resources/images/phone/V20_Ƽź.png');
insert into ph_color values (ph_color_seq.nextval,25, '�ǹ�', '/resources/images/phone/V20_�ǹ�.png');
insert into ph_color values (ph_color_seq.nextval,25, '��ũ', '/resources/images/phone/V20_��ũ.png');

insert into ph_color values (ph_color_seq.nextval,26, '���� ȭ��Ʈ', '/resources/images/phone/V10_����ȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,26, '��� ������', '/resources/images/phone/V10_���������.png');
insert into ph_color values (ph_color_seq.nextval,26, '���� ���', '/resources/images/phone/V10_���Ǻ��.png');

insert into ph_color values (ph_color_seq.nextval,27, 'Ƽź', '/resources/images/phone/G5_Ƽź.png');
insert into ph_color values (ph_color_seq.nextval,27, '�ǹ�', '/resources/images/phone/G5_�ǹ�.png');
insert into ph_color values (ph_color_seq.nextval,27, '��ũ', '/resources/images/phone/G5_��ũ.png');
insert into ph_color values (ph_color_seq.nextval,27, '���', '/resources/images/phone/G5_���.png');

insert into ph_color values (ph_color_seq.nextval,28, '�����ȭ��Ʈ', '/resources/images/phone/G4_�����ȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,28, '��Ż���׷���', '/resources/images/phone/G4_��Ż���׷���.png');
insert into ph_color values (ph_color_seq.nextval,28, 'õ�����׺���', '/resources/images/phone/G4_õ�����׺���.png');
insert into ph_color values (ph_color_seq.nextval,28, 'õ�����׺�', '/resources/images/phone/G4_õ�����׺�.png');

insert into ph_color values (ph_color_seq.nextval,29, 'Ƽź', '/resources/images/phone/GStylo_Ƽź.png');
insert into ph_color values (ph_color_seq.nextval,29, 'ȭ��Ʈ', '/resources/images/phone/GStylo_ȭ��Ʈ.png');

insert into ph_color values (ph_color_seq.nextval,30, '�÷�Ƽ�ѽǹ�', '/resources/images/phone/GFlex2_�÷�Ƽ�ѽǹ�.png');
insert into ph_color values (ph_color_seq.nextval,30, '�ö�����', '/resources/images/phone/GFlex2_�ö�����.png');

insert into ph_color values (ph_color_seq.nextval,31, 'ȭ��Ʈ', '/resources/images/phone/G3Screen_ȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,31, '��', '/resources/images/phone/G3Screen_��.png');

insert into ph_color values (ph_color_seq.nextval,32, 'Ƽź', '/resources/images/phone/G3A_Ƽź.png');
insert into ph_color values (ph_color_seq.nextval,32, 'ȭ��Ʈ', '/resources/images/phone/G3A_ȭ��Ʈ.png');

insert into ph_color values (ph_color_seq.nextval,33, '��Ż����', '/resources/images/phone/G3Cat6_��Ż����.png');
insert into ph_color values (ph_color_seq.nextval,33, '��ũȭ��Ʈ', '/resources/images/phone/G3Cat6_��ũȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,33, '���ΰ��', '/resources/images/phone/G3Cat6_���ΰ��.png');
insert into ph_color values (ph_color_seq.nextval,33, '����', '/resources/images/phone/G3Cat6_����.png');
insert into ph_color values (ph_color_seq.nextval,33, '�����̿÷�', '/resources/images/phone/G3Cat6_�����̿÷�.png');

insert into ph_color values (ph_color_seq.nextval,34, '��Ż����', '/resources/images/phone/G3_��Ż����.png');
insert into ph_color values (ph_color_seq.nextval,34, '��ũȭ��Ʈ', '/resources/images/phone/G3_��ũȭ��Ʈ.png');
insert into ph_color values (ph_color_seq.nextval,34, '���ΰ��', '/resources/images/phone/G3_���ΰ��.png');


drop sequence ph_capacity_seq;
create sequence ph_capacity_seq
   start with 1
   increment by 1 
   nocache
   nocycle;
   
--�ڵ��� �뷮
create table ph_capacity(
cno number,
no number,
capacity varchar2(15) not null,
release_price number not null,
primary key(cno)
);
ALTER TABLE ph_capacity ADD constraint ph_capacityforeign_fk foreign key(no) references ph_phone(no) on delete cascade;

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

--����

--���μ���
create table spec_processor(
	no number primary key,
	cpu_Speed varchar2(50),
	cpu_type varchar2(80)
);
ALTER TABLE spec_processor ADD constraint spec_processorforeign_fk foreign key(no) references ph_phone(no) on delete cascade;

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
insert into spec_processor values(25, 'null', '���� �����巡�� 820 ���μ���');
insert into spec_processor values(26, 'null', '���� �����巡�� 808 ���μ���');
insert into spec_processor values(27, '2.15GHz', '���� �����巡�� 820 ���μ���');
insert into spec_processor values(28, 'null', '���Ľ����巡�� 808 ���μ��� with X10 LTE');
insert into spec_processor values(29, '1.2GHz', '���Ľ����巡�� 410 ���μ��� (Quad Core)');
insert into spec_processor values(30, '1.2GHz', '���� �����巡��810 ���μ���');
insert into spec_processor values(31, '1.5GHz Quad + 1.2GHz Quad', 'Nuclun Octa-core');
insert into spec_processor values(32, '2.3GHz Quad Core', '���� �����巡�� 800');
insert into spec_processor values(33, '2.7GHz Quad Core', '���� �����巡�� 805');
insert into spec_processor values(34, '2.5GHz Quad Core', '���� �����巡�� 801');

--���÷���
create table spec_display(
	no number primary key,
	size_main varchar2(100),
	resoluation_main varchar2(50),
	type_main varchar2(250),
	color_depth_main varchar2(50),
	s_pen varchar2(50)
);
ALTER TABLE spec_display ADD constraint spec_displayforeign_fk foreign key(no) references ph_phone(no) on delete cascade;


insert into spec_display values (1,'139.5mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (2,'139.5mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (3,'139.5mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (4,'129.2mm','2560 X 1440 (Quad HD)','Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (5,'143.9mm','2560 X 1440 (Quad HD)','Super AMOLED', '16M', '��');
insert into spec_display values (6,'143.9mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (7,'129.2mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (8,'129.2mm','2560 X 1440 (Quad HD)','Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (9,'144.3mm','1920 X 1080 (FHD)','Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (10,'120.4mm','720 X 1280 (HD)','Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (11,'132.2mm','1920 X 1080 (FHD)','Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (12,'139.3mm','1920 X 1080 (FHD)','Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (13,'126.3mm','1280 X 720 (HD)','Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (14,'131.8mm','1280 X 720 (HD)','Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (15,'139.5mm','1280 X 720 (HD)','Super AMOLED', '16M', '�ƴϿ�');
insert into spec_display values (16,'141.9mm','2560 x [1440+160] (Quad HD+)','Super AMOLED', '16M', '��');
insert into spec_display values (17,'143.9mm','2560 x 1440 (Quad HD)','Super AMOLED', '16M', '��');
insert into spec_display values (18,'143.9mm','2560 x 1440 (Quad HD)','Super AMOLED', '16M', '��');
insert into spec_display values (19,'4.7��(�밢��) LED �����Ʈ ���̵彺ũ��','1334 x 750 �ȼ� �ػ�(326ppi)','Retina HD ���÷���, Multi-Touch ���÷���(IPS ���), ���̵� �÷� ���÷���(P3), 625 cd/m2 �ִ� ���(�Ϲ�), ���þ߰��� ���� ��� ������ �ȼ�, ���� �� ���� ���� ����', '1400:1 ��Ϻ�(�Ϲ�)', '');
insert into spec_display values (20,'5.5��(�밢��) LED �����Ʈ ���̵彺ũ��','1920 x 1080 �ȼ� �ػ�(401ppi)','Retina HD ���÷���, Multi-Touch ���÷���(IPS ���), ���̵� �÷� ���÷���(P3), 625 cd/m2 �ִ� ���(�Ϲ�), ���þ߰��� ���� ��� ������ �ȼ�, ���� �� ���� ���� ����', '1300:1 ��Ϻ�(�Ϲ�)', '');
insert into spec_display values (21,'4.7��(�밢��) LED �����Ʈ ���̵彺ũ��','1334 x 750 �ȼ� �ػ�(326ppi)','3D Touch�� ����� Retina HD ���÷���, 500 cd/m2 �ִ� ���(�Ϲ�), Ǯ sRGBǥ��, ���þ߰��� ���� ��� ������ �ȼ�, ���� �� ���� ���� ����', '1400:1 ��Ϻ�(�Ϲ�)', '');
insert into spec_display values (22,'5.5��(�밢��) LED �����Ʈ ���̵彺ũ��','1920 x 1080 �ȼ� �ػ�(401ppi)','3D Touch�� ����� Retina HD ���÷���, 500 cd/m2 �ִ� ���(�Ϲ�), Ǯ sRGBǥ��, ���þ߰��� ���� ��� ������ �ȼ�, ���� �� ���� ���� ����', '1300:1 ��Ϻ�(�Ϲ�)', '');
insert into spec_display values (23,'5.5��(�밢��) LED �����Ʈ ���̵彺ũ��','1920 x 1080 �ȼ� �ػ�(401ppi)','Retina HD ���÷���, 500 cd/m2 �ִ� ���(�Ϲ�), Ǯ sRGBǥ��, ���þ߰��� ���� ��� ������ �ȼ�, ���� �� ���� ���� ����', '1300:1 ��Ϻ�(�Ϲ�)', '');
insert into spec_display values (24,'4��(�밢��) LED �����Ʈ ���̵彺ũ�� Multi-Touch ���÷���','1136 x 640 �ȼ� �ػ�(326ppi)','Retina HD ���÷���, 500 cd/m2 �ִ� ���(�Ϲ�), Ǯ sRGBǥ��, ���� �� ���� ���� ����', '800:1 ��Ϻ�(�Ϲ�)', '');
insert into spec_display values (25,'152.3mm','2560 X 1440 QHD IPS ����','', '', '');
insert into spec_display values (26,'152.3mm','2560 X 1440 QHD IPS ����','', '', '');
insert into spec_display values (27,'134.6mm','2560 X 1440 QHD IPS ����','', '', '');
insert into spec_display values (28,'138.8mm','2560 X 1440','', '', '');
insert into spec_display values (29,'144.7mm','HD IPS ���÷���(258ppi)','', '', '');
insert into spec_display values (30,'138.7mm','1920 X 1080 (Full HD)','', '', '');
insert into spec_display values (31,'152mm','Full HD IPS LCD','', '', '');
insert into spec_display values (32,'132.2mm','1920 X 1080 (Full HD IPS ���÷���)','', '', '');
insert into spec_display values (33,'138.78mm','2560x1440 (Quad HD IPS ���÷���)','', '', '');
insert into spec_display values (34,'138.78mm','2560x1440 (Quad HD IPS ���÷���)','', '', '');

--ī�޶�
create table spec_camera(
	no number primary key,
	camrea_resoluation varchar2(50),
	maincamera_pixel varchar2(100),
	maincamera_aperture varchar2(100),
	frontcamera_pixel varchar2(50),
	frontcamera_aperture varchar2(50),
	maincamera_flash varchar2(50),
	maincamera_autofocus varchar2(50),
	camera_detail LONG
);
ALTER TABLE spec_camera ADD constraint spec_cameraforeign_fk foreign key(no) references ph_phone(no) on delete cascade;


insert into spec_camera values (1,'UHD 4K (3840 x 2160) @30fps','Dual Pixel 12.0 MP','f/1.7','CMOS 5.0 MP','f/1.7','��', '��', '');
insert into spec_camera values (2,'UHD 4K (3840 x 2160) @30fps','Dual Pixel 12.0 MP','f/1.7','CMOS 5.0 MP','f/1.7','��', '��', '');
insert into spec_camera values (3,'UHD 4K (3840 x 2160) @30fps','Dual Pixel 12.0 MP','f/1.7','CMOS 5.0 MP','f/1.7','��', '��', '');
insert into spec_camera values (4,'UHD 4K (3840 x 2160) @30fps','Dual Pixel 12.0 MP','f/1.7','CMOS 5.0 MP','f/1.7','��', '��', '');
insert into spec_camera values (5,'UHD 4K (3840 x 2160) @30fps','CMOS 16.0 MP','','CMOS 5.0 MP','','��', '��', '');
insert into spec_camera values (6,'UHD 4K (3840 x 2160) @30fps','CMOS 16.0 MP','','CMOS 5.0 MP','','��', '��', '');
insert into spec_camera values (7,'UHD 4K (3840 x 2160) @30fps','CMOS 16.0 MP','','CMOS 5.0 MP','','��', '��', '');
insert into spec_camera values (8,'UHD 4K (3840 x 2160) @30fps','CMOS 16.0 MP','','CMOS 5.0 MP','','��', '��', '');
insert into spec_camera values (9,'FHD 4K (1920 x 1080) @30fps','CMOS 16.0 MP','f/1.9','CMOS 8.0 MP','f/1.9','��', '��', '');
insert into spec_camera values (10,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','f/1.9','CMOS 5.0 MP','f/1.9','��', '��', '');
insert into spec_camera values (11,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','f/1.9','CMOS 5.0 MP','f/1.9','��', '��', '');
insert into spec_camera values (12,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','f/1.9','CMOS 5.0 MP','f/1.9','��', '��', '');
insert into spec_camera values (13,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','','CMOS 5.0 MP','','��', '��', '');
insert into spec_camera values (14,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','f/1.9','CMOS 5.0 MP','f/1.9','��', '��', '');
insert into spec_camera values (15,'FHD (1920 x 1080) @30fps','CMOS 13.0 MP','f/1.9','CMOS 5.0 MP','f/1.9','��', '��', '');
insert into spec_camera values (16,'UHD 4K (3840 x 2160)@30fps','CMOS 16.0 MP','','CMOS 3.7 MP','','��', '��', '');
insert into spec_camera values (17,'UHD 4K (3840 x 2160)@30fps','CMOS 16.0 MP','','CMOS 3.7 MP','','��', '��', '');
insert into spec_camera values (18,'UHD 4K (3840 x 2160)@30fps','CMOS 16.0 MP','','CMOS 3.7 MP','','��', '��', '');
insert into spec_camera values (19,'','1200�� ȭ�� ī�޶�','f/1.8','','','', '','������ �� �ִ� 5��<br> ���� �̹��� ��鸲 ����(OIS)<br> 6��(Six-element) ����<br>
 ����-LED True Tone �÷���<br> �ĳ��(�ִ� 6300�� ȭ��)<br> �����̾� ũ������ ���� Ŀ��<br> �ĸ� ���� ����<br> ���̺긮�� IR ����<br> Focus Pixels�� ���� ������Ŀ��<br> Focus Pixels�� ���� ������Ŀ��<br>
 �̹��� ��鸲 ������ ���� Live Photos<br> ���� �� Live Photos �Կ� �� ���� ���� ���� ����<br> ���� �ֺ� ���� ����<br> ���� �� �ν�<br> ���� ����<br> ������ ����<br> ������ ���� �ڵ� HDR<br> �ڵ� ��鸲 ����<br>
 ��� ���� ���<br> Ÿ�̸� ���<br> ���� ��ġ ǥ�� ���');
insert into spec_camera values (20,'','1200�� ȭ�� ���̵� �ޱ� �� ���� ī�޶�','���̵� �ޱ�: f/1.8 ,����������: f/2.8 ������','','','', '','���� �� 2��, ������ �� �ִ� 10��<br> 
 ���� �̹��� ��鸲 ����(OIS)<br> 6��(Six-element) ����<br> ����-LED True Tone �÷���<br> �ĳ��(�ִ� 6300�� ȭ��)<br> �����̾� ũ������ ���� Ŀ��<br> �ĸ� ���� ����<br> ���̺긮�� IR ����<br>
 Focus Pixels�� ���� ������Ŀ��<br> Focus Pixels�� ���� ������Ŀ��<br> �̹��� ��鸲 ������ ���� Live Photos<br> ���� �� Live Photos �Կ� �� ���� ���� ���� ����<br> ���� �ֺ� ���� ����<br> ���� �� �ν�<br>
 ���� ����<br> ������ ����<br> ������ ���� �ڵ� HDR<br> �ڵ� ��鸲 ����<br> ��� ���� ���<br> Ÿ�̸� ���<br> ���� ��ġ ǥ�� ���');
insert into spec_camera values (21,'','1200�� ȭ�� ī�޶�','f/2.2 ������','','','', '','�̹��� ��鸲 ������ ���� Live Photos<br> Focus Pixels�� ���� ������Ŀ��<br> 
True Tone �÷���<br> �ĳ��(�ִ� 6300�� ȭ��)<br> ������ ���� �ڵ� HDR<br> ���� ����<br> ��� ���� ���<br> Ÿ�̸� ���<br> 5��(Five-element) ����<br> 5�� ������ ��<br> ���̺긮�� IR ����<br> 
�ĸ� ���� ����<br> �����̾� ũ������ ���� Ŀ��<br> �ڵ� ��鸲 ����<br> �ֺ� ���� ����<br> ������ ����<br> �� �ν�<br> ���� ��ġ ǥ�� ���');
insert into spec_camera values (22,'','1200�� ȭ�� ī�޶�','f/2.2 ������','','','', '','�̹��� ��鸲 ������ ���� Live Photos<br> Focus Pixels�� ���� ������Ŀ��<br> 
���� �̹��� ��鸲 ����(iPhone 6s Plus�� �ش�)<br> True Tone �÷���<br> �ĳ��(�ִ� 6300�� ȭ��)<br> ������ ���� �ڵ� HDR<br> ���� ����<br> ��� ���� ���<br> Ÿ�̸� ���<br> 5��(Five-element) ����<br> 
5�� ������ ��<br> ���̺긮�� IR ����<br> �ĸ� ���� ����<br> �����̾� ũ������ ���� Ŀ��<br> �ڵ� ��鸲 ����<br> �ֺ� ���� ����<br> ������ ����<br> �� �ν�<br> ���� ��ġ ǥ�� ���');
insert into spec_camera values (23,'','1200�� ȭ�� ī�޶�','f/2.2 ������','','','', '','�̹��� ��鸲 ������ ���� Live Photos<br> Focus Pixels�� ���� ������Ŀ��<br> 
���� �̹��� ��鸲 ����(iPhone 6s Plus�� �ش�)<br> True Tone �÷���<br> �ĳ��(�ִ� 6300�� ȭ��)<br> ������ ���� �ڵ� HDR<br> ���� ����<br> ��� ���� ���<br> Ÿ�̸� ���<br> 5��(Five-element) ����<br> 
5�� ������ ��<br> ���̺긮�� IR ����<br> �ĸ� ���� ����<br> �����̾� ũ������ ���� Ŀ��<br> �ڵ� ��鸲 ����<br> �ֺ� ���� ����<br> ������ ����<br> �� �ν�<br> ���� ��ġ ǥ�� ���');
insert into spec_camera values (24,'','1200�� ȭ�� ī�޶�','f/2.2 ������','','','', '','�̹��� ��鸲 ������ ���� Live Photos<br> Focus Pixels�� ���� ������Ŀ��<br> 
�̹��� ��鸲 ������ ���� Live Photos<br> True Tone �÷���<br> �ĳ��(�ִ� 6300�� ȭ��)<br> ������ ���� �ڵ� HDR<br> ���� ����<br> ��� ���� ���<br> Ÿ�̸� ���<br> 5��(Five-element) ����<br> 
5�� ������ ��<br> ���̺긮�� IR ����<br> �ĸ� ���� ����<br> �����̾� ũ������ ���� Ŀ��<br> �ڵ� ��鸲 ����<br> �ֺ� ���� ����<br> ������ ����<br> �� �ν�<br> ���� ��ġ ǥ�� ���');
insert into spec_camera values (25,'','�Ϲ� : 1600��ȭ�� / ���� : 800��ȭ��','','���� 500��ȭ��','','��', '��', '');
insert into spec_camera values (26,'','1600��ȭ��','','��� 500��ȭ��','','��', '��', '');
insert into spec_camera values (27,'','�Ϲ� : 1600��ȭ�� / ���� : 800��ȭ��','','���� 800��ȭ��','','��', '��', '');
insert into spec_camera values (28,'','1600��ȭ��','','800��ȭ��','','��', '��', '');
insert into spec_camera values (29,'','800��ȭ��','','500��ȭ��','','��', '��', '');
insert into spec_camera values (30,'','1300��ȭ��','','210��ȭ��','','��', '��', '');
insert into spec_camera values (31,'','1300��ȭ��','','210��ȭ��','','��', '��', '');
insert into spec_camera values (32,'','1300��ȭ��','','210��ȭ��','','��', '��', '');
insert into spec_camera values (33,'','1300��ȭ��','','210��ȭ��','','��', '��', '');
insert into spec_camera values (34,'','1300��ȭ��','','210��ȭ��','','��', '��', '');

--�޸�
create table spec_memory(
	no number primary key,
	ramsize varchar2(50),
	romsize varchar2(50),
	usable_memory varchar2(50),
	outer_memory varchar2(50)
);
ALTER TABLE spec_memory ADD constraint spec_memoryforeign_fk foreign key(no) references ph_phone(no) on delete cascade;


insert into spec_memory values (1,'4GB','32GB','23.5GB','MicroSD (�ִ�256GB)');
insert into spec_memory values (2,'4GB','32GB','23.5GB','MicroSD (�ִ�256GB)');
insert into spec_memory values (3,'4GB','32GB','23.5GB','MicroSD (�ִ�256GB)');
insert into spec_memory values (4,'4GB','32GB','23.8GB','MicroSD (�ִ�256GB)');
insert into spec_memory values (5,'4GB','64GB','53.8GB','');
insert into spec_memory values (6,'4GB','32GB','24.2GB','');
insert into spec_memory values (7,'3GB','32GB, 64GB, 128GB','24.5GB, 54.0GB, 113.0GB','�ƴϿ�');
insert into spec_memory values (8,'3GB','32GB, 64GB','24.5GB, 54.0GB','�ƴϿ�');
insert into spec_memory values (9,'3GB','32GB','23.5GB','MicroSD (�ִ�256GB)');
insert into spec_memory values (10,'1.5GB','16GB','10.7GB','MicroSD (�ִ�256GB)');
insert into spec_memory values (11,'2GB','16GB','10.1GB','MicroSD (�ִ�128GB)');
insert into spec_memory values (12,'3GB','16GB','10.1GB','MicroSD (�ִ�128GB)');
insert into spec_memory values (13,'1.5GB','8GB','3.8GB','MicroSD (�ִ�128GB)');
insert into spec_memory values (14,'2GB','16GB','10.2GB','MicroSD (�ִ�128GB)');
insert into spec_memory values (15,'2GB','16GB','10.4GB','MicroSD (�ִ�128GB)');
insert into spec_memory values (16,'3GB','32GB','23.9GB','MicroSD (�ִ�128GB)');
insert into spec_memory values (17,'3GB','32GB','23.4GB','MicroSD (�ִ�128GB)');
insert into spec_memory values (18,'3GB','32GB','23.9GB','MicroSD (�ִ�128GB)');
insert into spec_memory values (25,'4GB','64GB','','MicroSD slot ����');
insert into spec_memory values (26,'4GB','64GB','','MicroSD slot ����');
insert into spec_memory values (27,'4GB','32GB','','MicroSD slot ����');
insert into spec_memory values (28,'3GB','32GB','','MicroSD slot ����');
insert into spec_memory values (29,'1.5GB','8GB','','MicroSD slot ����');
insert into spec_memory values (30,'2GB','32GB','','MicroSD slot ����');
insert into spec_memory values (31,'2GB','32GB','','MicroSD slot ����');
insert into spec_memory values (32,'2GB','32GB','','MicroSD slot ����');
insert into spec_memory values (33,'3GB','32GB','','MicroSD slot ����');
insert into spec_memory values (34,'3GB','32GB','','MicroSD slot ����');

--��Ʈ��ũ
create table spec_network(
	no number primary key,
	type_of_sim_slot varchar2(100),
	gsm_2g varchar2(50),
	umts_3g varchar2(100),
	td_scdma_3g varchar2(50),
	fdd_lte_4g varchar2(200),
	tdd_lte_4g varchar2(50)
);
ALTER TABLE spec_network ADD constraint spec_networkforeign_fk foreign key(no) references ph_phone(no) on delete cascade;


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
insert into spec_network values (19,'A10 Fusion Ĩ(64��Ʈ ��Ű��ó)<br>M10 ��� ���� ���μ��� ����','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(�뿪 38, 39, 40, 41) ','FDD-LTE(�뿪 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(�뿪 38, 39, 40, 41) ');
insert into spec_network values (20,'A10 Fusion Ĩ(64��Ʈ ��Ű��ó)<br>M10 ��� ���� ���μ��� ����','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(�뿪 38, 39, 40, 41) ','FDD-LTE(�뿪 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(�뿪 38, 39, 40, 41) ');
insert into spec_network values (21,'A9 Ĩ(64��Ʈ ��Ű��ó)<br>M9 ��� ���� ���μ��� ����','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(�뿪 38, 39, 40, 41) ','FDD-LTE(�뿪 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(�뿪 38, 39, 40, 41) ');
insert into spec_network values (22,'A9 Ĩ(64��Ʈ ��Ű��ó)<br>M9 ��� ���� ���μ��� ����','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(�뿪 38, 39, 40, 41) ','FDD-LTE(�뿪 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(�뿪 38, 39, 40, 41) ');
insert into spec_network values (23,'A9 Ĩ(64��Ʈ ��Ű��ó)<br>M9 ��� ���� ���μ��� ����','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(�뿪 38, 39, 40, 41) ','FDD-LTE(�뿪 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(�뿪 38, 39, 40, 41) ');
insert into spec_network values (24,'A9 Ĩ(64��Ʈ ��Ű��ó)<br>M9 ��� ���� ���μ��� ����','GSM/EDGE(850, 900, 1800, 1900MHz)','UMTS/HSPA+/DC-HSDPA(850, 900, 1700/2100, 1900, 2100MHz) ','TD-LTE(�뿪 38, 39, 40, 41) ','FDD-LTE(�뿪 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30) ','TD-LTE(�뿪 38, 39, 40, 41) ');

--����
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
	pcsynk varchar2(50)
);
ALTER TABLE spec_connect ADD constraint spec_connectforeign_fk foreign key(no) references ph_phone(no) on delete cascade;


insert into spec_connect values (1,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO','��','Bluetooth v4.2','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (2,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO','��','Bluetooth v4.2','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (3,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO','��','Bluetooth v4.2','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (4,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO','��','Bluetooth v4.2','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (5,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','��','Bluetooth v4.2','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (6,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','��','Bluetooth v4.2','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (7,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (8,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (9,'��','USB 2.0','GPS, Glonass','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4G+5GHz','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (10,'��','USB 2.0','GPS, Glonass','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4GHz','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (11,'��','USB 2.0','GPS, Glonass','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4+5GHz','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (12,'��','USB 2.0','GPS, Glonass','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4+5GHz, HT40','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (13,'�ƴϿ�','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 b/g/n/ac 2.4GHz','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (14,'��','USB 2.0','GPS, Glonass','3.5mm Stereo','�ƴϿ�','802.11 b/g/n 2.4GHz','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (15,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 b/g/n 2.4GHz','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');
insert into spec_connect values (16,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','��','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','KIES');
insert into spec_connect values (17,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','��','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','KIES');
insert into spec_connect values (18,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','��','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MIMO','��','Bluetooth v4.1','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','KIES');
insert into spec_connect values (19,'','','A-GPS(Assisted GPS), GLONASS, iBeacon ��ġ ���� ���� ���','','','MIMO ����� 802.11a/b/g/n/ac Wi-Fi ','��','Bluetooth v4.2','��','','');
insert into spec_connect values (20,'','','A-GPS(Assisted GPS), GLONASS, iBeacon ��ġ ���� ���� ���','','','MIMO ����� 802.11a/b/g/n/ac Wi-Fi ','��','Bluetooth v4.2','��','','');
insert into spec_connect values (21,'','','A-GPS(Assisted GPS), GLONASS, iBeacon ��ġ ���� ���� ���','','','MIMO ����� 802.11a/b/g/n/ac Wi-Fi ','��','Bluetooth v4.2','��','','');
insert into spec_connect values (22,'','','A-GPS(Assisted GPS), GLONASS, iBeacon ��ġ ���� ���� ���','','','MIMO ����� 802.11a/b/g/n/ac Wi-Fi ','��','Bluetooth v4.2','��','','');
insert into spec_connect values (23,'','','A-GPS(Assisted GPS), GLONASS, iBeacon ��ġ ���� ���� ���','','','MIMO ����� 802.11a/b/g/n/ac Wi-Fi ','��','Bluetooth v4.2','��','','');
insert into spec_connect values (24,'','','A-GPS(Assisted GPS), GLONASS, iBeacon ��ġ ���� ���� ���','','','MIMO ����� 802.11a/b/g/n/ac Wi-Fi ','��','Bluetooth v4.2','��','','');
insert into spec_connect values (25,'','','��','','','','��','��','��','','');
insert into spec_connect values (26,'','','��','','','','��','��','��','','');
insert into spec_connect values (27,'','','��','','','','��','��','��','','');
insert into spec_connect values (28,'','','��','','','','��','��','��','','');
insert into spec_connect values (29,'','','��','','','','��','��','��','','');
insert into spec_connect values (30,'','','��','','','','��','��','��','','');
insert into spec_connect values (31,'','','��','','','','��','��','��','','');
insert into spec_connect values (32,'','','��','','','','��','��','��','','');
insert into spec_connect values (33,'','','��','','','','��','��','��','','');
insert into spec_connect values (34,'','','��','','','','��','��','��','','');

--�ü��, �⺻���, ����, �ܰ����
create table spec_specifications(
	no number primary key,
	os varchar2(50),
	color varchar2(200),
	form varchar2(50),
	phone_size varchar2(50),
	weight varchar2(50),
	sensor varchar2(200)
);
ALTER TABLE spec_specifications ADD constraint spec_specificationsforeign_fk foreign key(no) references ph_phone(no) on delete cascade;


insert into spec_specifications values (1,'Android','�� ���н�, ��� �ڶ�, �ǹ� ƼŸ��, ��ũ ���, ��� �÷�Ƽ��, ȭ��Ʈ��','��ġ ��','150.9 x 72.6 x 7.7','157','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, RGB �� ����');
insert into spec_specifications values (2,'Android','�� ���н�','��ġ ��','150.9 x 72.6 x 7.7','157','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, RGB �� ����');
insert into spec_specifications values (3,'Android','�� ���н�','��ġ ��','150.9 x 72.6 x 7.7','157','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, RGB �� ����');
insert into spec_specifications values (4,'Android','��ũ ���, ��, �ǹ� Ƽź, ���, ȭ��Ʈ, ���� ��ũ','��ġ ��','142.4 x 69.6 x 7.9','152','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, RGB �� ����');
insert into spec_specifications values (5,'Android','���� ��ũ, ��, �ǹ� Ƽź, ���, ȭ��Ʈ','��ġ ��','153.2 x 76.1 x 7.6','171','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, RGB �� ����');
insert into spec_specifications values (6,'Android','��, ���','��ġ ��','154.4 x 75.8 x 6.9','153','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, RGB �� ����');
insert into spec_specifications values (7,'Android','��� �÷�Ƽ��, ��, �׸� ���޶���, ȭ��Ʈ','��ġ ��','142.1 x 70.1 x 7.0','132','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, RGB �� ����');
insert into spec_specifications values (8,'Android','�� �����̾�, ��� �����̾�, ���, ȭ��Ʈ','��ġ ��','143.4 x 70.5 x 6.8','138','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, RGB �� ����');
insert into spec_specifications values (9,'Android', 'ȭ��Ʈ, ȭ��Ʈ���, ��ũ���','��ġ ��','156.6 x 76.8 x 7.2','182','���ӵ� ����, ���� ����, ���ڱ� ����, ���� ����, RGB �� ����');
insert into spec_specifications values (10,'Android', '��, ������ũ, ȭ��Ʈ','��ġ ��','134.5 x 65.2 x 7.3','132','���ӵ� ����, ���ڱ� ����, Ȧ ����, ���� ����, RGB �� ����');
insert into spec_specifications values (11,'Android', '��, ������ũ, ȭ��Ʈ','��ġ ��','144.8 x 71.0 x 7.3','155','���ӵ� ����, ��������, ���ڱ� ����, Ȧ ����, ���� ����, RGB �� ����');
insert into spec_specifications values (12,'Android', '��, ������ũ, ȭ��Ʈ','��ġ ��','151.5 x 74.1 x 7.3','172','���ӵ� ����, ��������, ���ڱ� ����, Ȧ ����, ���� ����, RGB �� ����');
insert into spec_specifications values (13,'Android', 'ȭ��Ʈ','��ġ ��','142.3 x 71.0 x 7.9','138','���ӵ� ����, ���� ����');
insert into spec_specifications values (14,'Android', 'ȭ��Ʈ, ��','��ġ ��','145.8 x 72.3 x 8.1','158','���ӵ� ����, Ȧ ����, ���� ����');
insert into spec_specifications values (15,'Android', '���, ��','��ġ ��','151.8 x 76.0 x 7.8','169','���ӵ� ����, Ȧ ����, ���� ����');
insert into spec_specifications values (16,'Android', 'ȭ��Ʈ, ��','��ġ ��','151.3 x 82.4 x 8.3','174','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, ���� ����, UV ����, RGB ����, ����ó ����');
insert into spec_specifications values (17,'Android', 'ȭ��Ʈ, ��, �ǹ�, ��ũ, ����','��ġ ��','153.5 x 78.6 x 8.5','176','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, ���� ����, UV ����, RGB ����, ����ó ����');
insert into spec_specifications values (18,'Android', 'ȭ��Ʈ, ��, �ǹ�, ��ũ, ����','��ġ ��','153.5 x 78.6 x 8.5','176','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, ���� ����, UV ����, RGB ����, ����ó ����');
insert into spec_specifications values (19,'iOS 10', '���� ���, ���, �ǹ�, ��, ��Ʈ ��','��','138.3 x 67.1 x 7.1','138','Touch ID ���� ����, ��а�, 3�� ���̷�, ���ӵ���, ���� ����, �ֺ��� ����');
insert into spec_specifications values (20,'iOS 10', '���� ���, ���, �ǹ�, ��, ��Ʈ ��','��','158.2 x 77.9 x 7.3','188','Touch ID ���� ����, ��а�, 3�� ���̷�, ���ӵ���, ���� ����, �ֺ��� ����');
insert into spec_specifications values (21,'iOS 9', '���� ���, ���, �ǹ�, ��, ��Ʈ ��','��','138.3 x 67.1 x 7.1','143','Touch ID ���� ����, ��а�, 3�� ���̷�, ���ӵ���, ���� ����, �ֺ��� ����');
insert into spec_specifications values (22,'iOS 9', '���� ���, ���, �ǹ�, ��, ��Ʈ ��','��','158.2 x 77.9 x 7.3','192','Touch ID ���� ����, ��а�, 3�� ���̷�, ���ӵ���, ���� ����, �ֺ��� ����');
insert into spec_specifications values (23,'iOS 9', '���, �ǹ�, �����̽� �׷���','��','158.2 x 77.9 x 7.3','192','Touch ID ���� ����, ��а�, 3�� ���̷�, ���ӵ���, ���� ����, �ֺ��� ����');
insert into spec_specifications values (24,'iOS 9', '���, �ǹ�, �����̽� �׷���,������','��','123.8 x 58.6 x 7.6','113','Touch ID ���� ����, ��а�, 3�� ���̷�, ���ӵ���, ���� ����, �ֺ��� ����');
insert into spec_specifications values (25,'Android', 'Ƽź, �ǹ�, ��ũ','��ġ ������','159.7 x 78.61 x 7.6','173','');
insert into spec_specifications values (26,'Android', '���� ȭ��Ʈ, ��� ������, ���� ���','��ġ ������','159.6 x 79.3 x 8.6','192','');
insert into spec_specifications values (27,'Android', '�ǹ�, Ƽź, ���, ��ũ','��ġ ������','149.4 x 73.9 x 7.7','159','');
insert into spec_specifications values (28,'Android', '����� ȭ��Ʈ, ��Ż�� �׷���, õ�� ���� ����, õ�� ���� ��','��ġ ������','148.9 x 76.1 x 9.8','155','');
insert into spec_specifications values (29,'Android', 'ȭ��Ʈ, Ƽź','��ġ ������','154.3 x 79.2 x 9.6','163','');
insert into spec_specifications values (30,'Android', '�÷�Ƽ�� �ǹ�, �ö��� ����','��ġ ������','149.1 x 75.3 x 7.1~9.4','152','');
insert into spec_specifications values (31,'Android', 'ȭ��Ʈ, ��','��ġ ������','157.8 x 81.8 x 9.45','182','');
insert into spec_specifications values (32,'Android', 'Ƽź, ȭ��Ʈ','��ġ ������','141 x 71.6 x 9.8','146.8','');
insert into spec_specifications values (33,'Android', 'Ƽź, ȭ��Ʈ','��ġ ������','146.3 x 74.6 x 9.1','154','');
insert into spec_specifications values (34,'Android', '��Ż�� ��, ��ũ ȭ��Ʈ, ���� ���','��ġ ������','146.3 x 74.6 x 8.95','151','');

--���͸�
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
	continuous_call varchar2(50)
);
ALTER TABLE spec_battery ADD constraint spec_batteryforeign_fk foreign key(no) references ph_phone(no) on delete cascade;


insert into spec_battery values (1,'�ִ�12','�ִ�15','�ִ�16','�ִ�18','3600','�ƴϿ�','�ִ�62','�ִ�81','�ִ�27');
insert into spec_battery values (2,'�ִ�12','�ִ�15','�ִ�16','�ִ�18','3600','�ƴϿ�','�ִ�62','�ִ�81','�ִ�27');
insert into spec_battery values (3,'�ִ�12','�ִ�15','�ִ�16','�ִ�18','3600','�ƴϿ�','�ִ�62','�ִ�81','�ִ�27');
insert into spec_battery values (4,'�ִ�11','�ִ�13','�ִ�15','�ִ�16','3000','�ƴϿ�','�ִ�46','�ִ�65','�ִ�22');
insert into spec_battery values (5,'�ִ�10','�ִ�11','�ִ�13','�ִ�15','3000','�ƴϿ�','�ִ�64','','�ִ�22');
insert into spec_battery values (6,'�ִ�10','�ִ�11','�ִ�12','�ִ�15','3000','�ƴϿ�','�ִ�66','','�ִ�20');
insert into spec_battery values (7,'�ִ�10','�ִ�11','�ִ�12','�ִ�13','2600','�ƴϿ�','�ִ�50','','�ִ�18');
insert into spec_battery values (8,'�ִ�10','�ִ�11','�ִ�12','�ִ�13','2550','�ƴϿ�','�ִ�49','','�ִ�17');
insert into spec_battery values (9,'�ִ�11','�ִ�13','�ִ�14','�ִ�17','3300','�ƴϿ�','�ִ�44','�ִ�60','�ִ�22');
insert into spec_battery values (10,'�ִ�12','�ִ�13','�ִ�15','�ִ�14','2300','�ƴϿ�','�ִ�58','','�ִ�15');
insert into spec_battery values (11,'�ִ�14','�ִ�14','�ִ�16','�ִ�14','2900','�ƴϿ�','�ִ�75','','�ִ�18');
insert into spec_battery values (12,'�ִ�14','�ִ�14','�ִ�17','�ִ�15','3300','�ƴϿ�','�ִ�78','','�ִ�19');
insert into spec_battery values (13,'�ִ�9','�ִ�10','�ִ�12','�ִ�14','2600','','�ִ�62','','�ִ�19');
insert into spec_battery values (14,'�ִ�11','�ִ�12','�ִ�14','�ִ�16','3100','��','�ִ�75','','�ִ�21');
insert into spec_battery values (15,'�ִ�9','�ִ�12','�ִ�14','�ִ�20','3300','��','�ִ�86','','�ִ�24');
insert into spec_battery values (16,'�ִ�9','�ִ�10','�ִ�11','�ִ�21','3000','��','�ִ�11','','�ִ�18');
insert into spec_battery values (17,'�ִ�10','�ִ�11','�ִ�12','�ִ�12','3220','��','�ִ�53','','�ִ�20');
insert into spec_battery values (18,'�ִ�10','�ִ�11','�ִ�12','�ִ�12','3220','��','�ִ�53','','�ִ�19');
insert into spec_battery values (19,'�ִ�12','�ִ�12','�ִ�14','�ִ�13','','','�ִ�40','','�ִ�14');
insert into spec_battery values (20,'�ִ�13','�ִ�13','�ִ�15','�ִ�14','','','�ִ�60','','�ִ�21');
insert into spec_battery values (21,'�ִ�10','�ִ�10','�ִ�11','�ִ�11','','','�ִ�50','','�ִ�14');
insert into spec_battery values (22,'�ִ�12','�ִ�12','�ִ�12','�ִ�14','','','�ִ�80','','�ִ�24');
insert into spec_battery values (23,'�ִ�12','�ִ�12','�ִ�12','�ִ�14','','','�ִ�80','','�ִ�24');
insert into spec_battery values (24,'�ִ�12','�ִ�13','�ִ�13','�ִ�13','','','�ִ�50','','�ִ�14');
insert into spec_battery values (25,'','','','','3200','','','','�ִ�16');
insert into spec_battery values (26,'','','','','3000','','','','�ִ�14');
insert into spec_battery values (27,'','','','','2800','','','','�ִ�14');
insert into spec_battery values (28,'','','','','3000','','','','�ִ�14');
insert into spec_battery values (29,'','','','','3000','','','','�ִ�13');
insert into spec_battery values (30,'','','','','3000','','','','�ִ�13');
insert into spec_battery values (31,'','','','','3000 X 2(��Ż��)','','','','�ִ�13');
insert into spec_battery values (32,'','','','','2610 (��Ż��)','','','','�ִ�12');
insert into spec_battery values (33,'','','','','3000 (��Ż��)','','','','�ִ�17');
insert into spec_battery values (34,'','','','','3000 (��Ż��)','','','','�ִ�17');

--�����/����
create table spec_audio(
	no number primary key,
	video_format varchar2(2000),
	video_resoluation varchar2(100),
	audio_format varchar2(500),
	video_detail LONG,
	facetime varchar2(500)
);
ALTER TABLE spec_audio ADD constraint spec_audioforeign_fk foreign key(no) references ph_phone(no) on delete cascade;



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
insert into spec_audio values (19,'AirPlay �̷���, ����, �����, �������� Apple TV�� ���(2���� �̻�)<br>������ �̷��� �� ������ ��� ���� : Lightning Digital AV ����� �� Lightning-VGA ����� ��� �� �ִ� 1080p(����� ����)<br>
������ ���� ���� : �ִ� 4K�� H.264 ������, �ʴ� 30������, High Profile level 4.2(�ִ� 160Kbps�� AAC-LC �����), 48kHz, �ִ� 1008Kbps�� ���׷��� ����� <br>�Ǵ� Dolby Audio, 48kHz, .4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 2.5Mbps�� MPEG-4 ������, 640 x 480 �ȼ�, �ʴ� 30������, Simple Profile(ä�δ� �ִ� 160Kbps�� AAC-LC �����), 48kHz, 1008Kbps�� ���׷��� �����<br> �Ǵ� Dolby Audio, 48kHz, .m4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 35Mbps�� Motion JPEG(M-JPEG), 1280 x 720 �ȼ�, �ʴ� 30������, ulaw �����, .avi ���� ���� PCM ���׷��� �����','','�����Ǵ� ����� ���� : AAC(8~320Kbps), ���� ������ AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3),<br>
Dolby Digital Plus(E-AC-3), Audible(���� 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV','4K ������ �Կ�(�ʴ� 30 ������)<br> 1080p HD ������ �Կ�(�ʴ� 30 �Ǵ� 60 ������)<br> 
720p HD ������ �Կ�(�ʴ� 30 ������)<br> �������� ���� ���� �̹��� ��鸲 ����(OIS)<br> ����-LED True Tone �÷���<br> ���� ��� ������ ����(1080p�� �ʴ� 120 ������, 720p�� �ʴ� 240 ������)<br> Ÿ�ӷ��� ������(������ ��鸲 ���� ����)<br> 
�ó׸�ƽ ������ ��鸲 ����(1080p �� 720p)<br> ���� ������Ŀ�� ������<br> ���� �� �ν�<br> ������ ����<br> 4K ������ �Կ� �� 800�� ȭ�� ���� �Կ�<br> ��� �� ��<br> ������ ��ġ ǥ�� ���','700�� ȭ�� ����<br> 1080p HD ������ �Կ�<br> 
Retina Flash<br> f/2.2 ������<br> ���� �� Live Photos �Կ� �� ���� ���� ���� ����<br> �ڵ� HDR<br> �ĸ� ���� ����<br> ���� �� �ν�<br> �ڵ� ��鸲 ����<br> ��� ���� ���<br> ���� ����<br> Ÿ�̸� ���');
insert into spec_audio values (20,'AirPlay �̷���, ����, �����, �������� Apple TV�� ���(2���� �̻�)<br>������ �̷��� �� ������ ��� ����: Lightning Digital AV ����� �� Lightning-VGA ����� ��� �� �ִ� 1080p(����� ����)<br>
������ ���� ����: �ִ� 4K�� H.264 ������, �ʴ� 30������, High Profile level 4.2(�ִ� 160Kbps�� AAC-LC �����), 48kHz, �ִ� 1008Kbps�� ���׷��� ����� �Ǵ� Dolby Audio, 48kHz, .4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 2.5Mbps�� MPEG-4 ������, 640 x 480 �ȼ�, �ʴ� 30������, Simple Profile(ä�δ� �ִ� 160Kbps�� AAC-LC �����), 48kHz, 1008Kbps�� ���׷��� ����� �Ǵ� Dolby Audio, 48kHz, .m4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 35Mbps�� Motion JPEG(M-JPEG), 1280 x 720 �ȼ�, �ʴ� 30������, ulaw �����, .avi ���� ���� PCM ���׷��� �����','','�����Ǵ� ����� ����: AAC(8~320Kbps), ���� ������ AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3), 
Dolby Digital Plus(E-AC-3), Audible(���� 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV','4K ������ �Կ�(�ʴ� 30 ������)<br> 1080p HD ������ �Կ�(�ʴ� 30 �Ǵ� 60 ������)<br> 
720p HD ������ �Կ�(�ʴ� 30 ������)<br> �������� ���� ���� �̹��� ��鸲 ����(OIS)<br> ���� �� 2��, ������ �� 6��<br> ����-LED True Tone �÷���<br> ���� ��� ������ ����(1080p�� �ʴ� 120 ������, 720p�� �ʴ� 240 ������)<br> Ÿ�ӷ��� ������(������ ��鸲 ���� ����)<br> 
�ó׸�ƽ ������ ��鸲 ����(1080p �� 720p)<br> ���� ������Ŀ�� ������<br> ���� �� �ν�<br> ������ ����<br> 4K ������ �Կ� �� 800�� ȭ�� ���� �Կ�<br> ��� �� ��<br> ������ ��ġ ǥ�� ���','700�� ȭ�� ����<br> 1080p HD ������ �Կ�<br> 
Retina Flash<br> f/2.2 ������<br> ���� �� Live Photos �Կ� �� ���� ���� ���� ����<br> �ڵ� HDR<br> �ĸ� ���� ����<br> ���� �� �ν�<br> �ڵ� ��鸲 ����<br> ��� ���� ���<br> ���� ����<br> Ÿ�̸� ���');
insert into spec_audio values (21,'AirPlay �̷���, ����, �����, �������� Apple TV�� ���(2���� �̻�)<br> ������ �̷��� �� ������ ��� ����: Lightning Digital AV ����� �� Lightning-VGA ����� ��� �� �ִ� 1080p(����� ����)<br> 
������ ���� ����: �ִ� 4K�� H.264 ������, �ʴ� 30������, High Profile level 4.2(�ִ� 160Kbps�� AAC-LC �����), 48kHz, �ִ� 1008Kbps�� ���׷��� ����� �Ǵ� Dolby Audio, 48kHz, .4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 2.5Mbps�� MPEG-4 ������, 640 x 480 �ȼ�, �ʴ� 30������, Simple Profile(ä�δ� �ִ� 160Kbps�� AAC-LC �����), 48kHz, 1008Kbps�� ���׷��� ����� �Ǵ� Dolby Audio, 48kHz, .m4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 35Mbps�� Motion JPEG(M-JPEG), 1280 x 720 �ȼ�, �ʴ� 30������, ulaw �����, .avi ���� ���� PCM ���׷��� �����','','�����Ǵ� ����� ����: AAC(8~320Kbps), ���� ������ AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3), 
Dolby Digital Plus(E-AC-3), Audible(���� 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV<br> �ִ� ���� ���� ���� ����',
'4K ������ �Կ�(�ʴ� 30 ������)<br> 1080p HD ������ �Կ�(�ʴ� 30 �Ǵ� 60 ������)<br> 720p HD ������ �Կ�(�ʴ� 30 ������)<br> 
True Tone �÷���<br> ���� ��� ������ ����(1080p�� �ʴ� 120 ������, 720p�� �ʴ� 240 ������)<br> Ÿ�ӷ��� ������(������ ��鸲 ���� ����)<br> �ó׸�ƽ ������ ��鸲 ����(1080p �� 720p)<br> 
���� ������Ŀ�� ������<br> ������ ����<br> 4K ������ �Կ� �� 800�� ȭ�� ���� �Կ�<br> ��� �� ��<br> 3�� ������ ��<br> �� �ν�<br> ������ ��ġ ǥ�� ���','v500�� ȭ�� ����<br> 720p HD ������ �Կ�<br> Retina Flash<br> 
f/2.2 ������<br> ���� �� �������� ���� �ڵ� HDR<br> �ĸ� ���� ����<br> ���� ����<br> ��� ���� ���<br> Ÿ�̸� ���<br> �� �ν�');
insert into spec_audio values (22,'AirPlay �̷���, ����, �����, �������� Apple TV�� ���(2���� �̻�)<br> ������ �̷��� �� ������ ��� ����: Lightning Digital AV ����� �� Lightning-VGA ����� ��� �� �ִ� 1080p(����� ����)<br> 
������ ���� ����: �ִ� 4K�� H.264 ������, �ʴ� 30������, High Profile level 4.2(�ִ� 160Kbps�� AAC-LC �����), 48kHz, �ִ� 1008Kbps�� ���׷��� ����� �Ǵ� Dolby Audio, 48kHz, .4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 2.5Mbps�� MPEG-4 ������, 640 x 480 �ȼ�, �ʴ� 30������, Simple Profile(ä�δ� �ִ� 160Kbps�� AAC-LC �����), 48kHz, 1008Kbps�� ���׷��� ����� �Ǵ� Dolby Audio, 48kHz, .m4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 35Mbps�� Motion JPEG(M-JPEG), 1280 x 720 �ȼ�, �ʴ� 30������, ulaw �����, .avi ���� ���� PCM ���׷��� �����','','�����Ǵ� ����� ����: AAC(8~320Kbps), ���� ������ AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3), 
Dolby Digital Plus(E-AC-3), Audible(���� 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV<br> �ִ� ���� ���� ���� ����',
'4K ������ �Կ�(�ʴ� 30 ������)<br> 1080p HD ������ �Կ�(�ʴ� 30 �Ǵ� 60 ������)<br> 720p HD ������ �Կ�(�ʴ� 30 ������)<br> �������� ���� ���� �̹��� ��鸲 ����(iPhone 6s Plus�� �ش�)<br> 
True Tone �÷���<br> ���� ��� ������ ����(1080p�� �ʴ� 120 ������, 720p�� �ʴ� 240 ������)<br> Ÿ�ӷ��� ������(������ ��鸲 ���� ����)<br> �ó׸�ƽ ������ ��鸲 ����(1080p �� 720p)<br> 
���� ������Ŀ�� ������<br> ������ ����<br> 4K ������ �Կ� �� 800�� ȭ�� ���� �Կ�<br> ��� �� ��<br> 3�� ������ ��<br> �� �ν�<br> ������ ��ġ ǥ�� ���','v500�� ȭ�� ����<br> 720p HD ������ �Կ�<br> Retina Flash<br> 
f/2.2 ������<br> ���� �� �������� ���� �ڵ� HDR<br> �ĸ� ���� ����<br> ���� ����<br> ��� ���� ���<br> Ÿ�̸� ���<br> �� �ν�');
insert into spec_audio values (23,'AirPlay �̷���, ����, �����, �������� Apple TV�� ���(2���� �̻�)<br> ������ �̷��� �� ������ ��� ����: Lightning Digital AV ����� �� Lightning-VGA ����� ��� �� �ִ� 1080p(����� ����)<br> 
������ ���� ����: �ִ� 4K�� H.264 ������, �ʴ� 30������, High Profile level 4.2(�ִ� 160Kbps�� AAC-LC �����), 48kHz, �ִ� 1008Kbps�� ���׷��� ����� �Ǵ� Dolby Audio, 48kHz, .4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 2.5Mbps�� MPEG-4 ������, 640 x 480 �ȼ�, �ʴ� 30������, Simple Profile(ä�δ� �ִ� 160Kbps�� AAC-LC �����), 48kHz, 1008Kbps�� ���׷��� ����� �Ǵ� Dolby Audio, 48kHz, .m4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 35Mbps�� Motion JPEG(M-JPEG), 1280 x 720 �ȼ�, �ʴ� 30������, ulaw �����, .avi ���� ���� PCM ���׷��� �����','','�����Ǵ� ����� ����: AAC(8~320Kbps), ���� ������ AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3), 
Dolby Digital Plus(E-AC-3), Audible(���� 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV<br> �ִ� ���� ���� ���� ����',
'4K ������ �Կ�(�ʴ� 30 ������)<br> 1080p HD ������ �Կ�(�ʴ� 30 �Ǵ� 60 ������)<br> 720p HD ������ �Կ�(�ʴ� 30 ������)<br> �������� ���� ���� �̹��� ��鸲 ����(iPhone 6s Plus�� �ش�)<br> 
True Tone �÷���<br> ���� ��� ������ ����(1080p�� �ʴ� 120 ������, 720p�� �ʴ� 240 ������)<br> Ÿ�ӷ��� ������(������ ��鸲 ���� ����)<br> �ó׸�ƽ ������ ��鸲 ����(1080p �� 720p)<br> 
���� ������Ŀ�� ������<br> ������ ����<br> 4K ������ �Կ� �� 800�� ȭ�� ���� �Կ�<br> ��� �� ��<br> 3�� ������ ��<br> �� �ν�<br> ������ ��ġ ǥ�� ���','v500�� ȭ�� ����<br> 720p HD ������ �Կ�<br> Retina Flash<br> 
f/2.2 ������<br> ���� �� �������� ���� �ڵ� HDR<br> �ĸ� ���� ����<br> ���� ����<br> ��� ���� ���<br> Ÿ�̸� ���<br> �� �ν�');
insert into spec_audio values (24,'AirPlay �̷���, ����, �����, �������� Apple TV�� ���(2���� �̻�)<br> ������ �̷��� �� ������ ��� ����: Lightning Digital AV ����� �� Lightning-VGA ����� ��� �� �ִ� 1080p(����� ����)<br> 
������ ���� ����: �ִ� 4K�� H.264 ������, �ʴ� 30������, High Profile level 4.2(�ִ� 160Kbps�� AAC-LC �����), 48kHz, �ִ� 1008Kbps�� ���׷��� ����� �Ǵ� Dolby Audio, 48kHz, .4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 2.5Mbps�� MPEG-4 ������, 640 x 480 �ȼ�, �ʴ� 30������, Simple Profile(ä�δ� �ִ� 160Kbps�� AAC-LC �����), 48kHz, 1008Kbps�� ���׷��� ����� �Ǵ� Dolby Audio, 48kHz, .m4v, .mp4, .mov ���� ���� ���׷��� �Ǵ� ��Ƽä�� �����, 
�ִ� 35Mbps�� Motion JPEG(M-JPEG), 1280 x 720 �ȼ�, �ʴ� 30������, ulaw �����, .avi ���� ���� PCM ���׷��� �����','','�����Ǵ� ����� ����: AAC(8~320Kbps), ���� ������ AAC(iTunes Store), HE-AAC, MP3(8~320Kbps), MP3 VBR, Dolby Digital(AC-3), 
Dolby Digital Plus(E-AC-3), Audible(���� 2, 3, 4, Audible Enhanced Audio, AAX, AAX+), Apple Lossless, AIFF, WAV<br> �ִ� ���� ���� ���� ����',
'4K ������ �Կ�(�ʴ� 30 ������)<br> 1080p HD ������ �Կ�(�ʴ� 30 �Ǵ� 60 ������)<br> 720p HD ������ �Կ�(�ʴ� 30 ������)<br> �������� ���� ���� �̹��� ��鸲 ����(iPhone 6s Plus�� �ش�)<br> 
True Tone �÷���<br> ���� ��� ������ ����(1080p�� �ʴ� 120 ������, 720p�� �ʴ� 240 ������)<br> Ÿ�ӷ��� ������(������ ��鸲 ���� ����)<br> �ó׸�ƽ ������ ��鸲 ����(1080p �� 720p)<br> 
���� ������Ŀ�� ������<br> ������ ����<br> 4K ������ �Կ� �� 800�� ȭ�� ���� �Կ�<br> ��� �� ��<br> 3�� ������ ��<br> �� �ν�<br> ������ ��ġ ǥ�� ���','v500�� ȭ�� ����<br> 720p HD ������ �Կ�<br> Retina Flash<br> 
f/2.2 ������<br> ���� �� �������� ���� �ڵ� HDR<br> �ĸ� ���� ����<br> ���� ����<br> ��� ���� ���<br> Ÿ�̸� ���<br> �� �ν�');

--����
create table spec_service(
	no number primary key,
	gear_support varchar2(200),
	svoice varchar2(50),
	mobiletv varchar2(50),
	siri LONG,
	waterproof varchar2(50)
);
ALTER TABLE spec_service ADD constraint spec_serviceforeign_fk foreign key(no) references ph_phone(no) on delete cascade;


insert into spec_service values (1,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���1, ���2, ���2 �׿�, ��� S, ��� S2, ��� VR','��','��','','');
insert into spec_service values (2,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���1, ���2, ���2 �׿�, ��� S, ��� S2, ��� VR','��','��','','');
insert into spec_service values (3,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���1, ���2, ���2 �׿�, ��� S, ��� S2, ��� VR','��','��','','');
insert into spec_service values (4,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���1, ���2, ���2 �׿�, ��� S, ��� S2, ��� VR','��','��','','');
insert into spec_service values (5,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���','��','��','','');
insert into spec_service values (6,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���','��','��','','');
insert into spec_service values (7,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���','��','��','','');
insert into spec_service values (8,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���','��','��','','');
insert into spec_service values (9,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ��� ��2, ���S2','��','��','','');
insert into spec_service values (10,'','��','�ƴϿ�','','');
insert into spec_service values (11,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���','��','��','','');
insert into spec_service values (12,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���','��','��','','');
insert into spec_service values (13,'��� ��Ŭ(�Ŵ��� ����Ʈ), ���S2','�ƴϿ�','�ƴϿ�','','');
insert into spec_service values (14,'��� ��Ŭ(�Ŵ��� ����Ʈ), ���S2','�ƴϿ�','��','','');
insert into spec_service values (15,'��� ��Ŭ(�Ŵ��� ����Ʈ), ���S2','�ƴϿ�','��','','');
insert into spec_service values (16,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� �� �Ŵ���, ��� �Ŵ���','��','��','','');
insert into spec_service values (17,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� �� �Ŵ���, ��� �Ŵ���, ��� VR','��','��','','');
insert into spec_service values (18,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� �� �Ŵ���, ��� �Ŵ���, ��� VR','��','��','','');
insert into spec_service values (19,'','','','�������� �޽��� ����, �̸� �˸� ���� �� �پ��� ��� ���� ����<br> �ɵ����� ���� ���<br> �������� ���<br> �뷡 ��� ���� �˷��ֱ�','IEC �԰� 60529 ���� IP67 ��� ȹ��');
insert into spec_service values (20,'','','','�������� �޽��� ����, �̸� �˸� ���� �� �پ��� ��� ���� ����<br> �ɵ����� ���� ���<br> �������� ���<br> �뷡 ��� ���� �˷��ֱ�','IEC �԰� 60529 ���� IP67 ��� ȹ��');
insert into spec_service values (21,'','','','�������� �޽��� ����, �̸� �˸� ���� �� �پ��� ��� ���� ����<br> �ɵ����� ���� ���<br> �������� ���<br> �뷡 ��� ���� �˷��ֱ�','');
insert into spec_service values (22,'','','','�������� �޽��� ����, �̸� �˸� ���� �� �پ��� ��� ���� ����<br> �ɵ����� ���� ���<br> �������� ���<br> �뷡 ��� ���� �˷��ֱ�','');
insert into spec_service values (23,'','','','�������� �޽��� ����, �̸� �˸� ���� �� �پ��� ��� ���� ����<br> �ɵ����� ���� ���<br> �������� ���<br> �뷡 ��� ���� �˷��ֱ�','');
insert into spec_service values (24,'','','','�������� �޽��� ����, �̸� �˸� ���� �� �پ��� ��� ���� ����<br> �ɵ����� ���� ���<br> �������� ���<br> �뷡 ��� ���� �˷��ֱ�','');
insert into spec_service values (25,'','','��','','');
insert into spec_service values (26,'','','��','','');
insert into spec_service values (27,'','','��','','');
insert into spec_service values (28,'','','��','','');
insert into spec_service values (29,'','','��','','');
insert into spec_service values (30,'','','��','','');
insert into spec_service values (31,'','','��','','');
insert into spec_service values (32,'','','��','','');
insert into spec_service values (33,'','','��','','');
insert into spec_service values (34,'','','��','','');


--����
create table ph_client(
num number(10) primary key,
path varchar2(300)
);

drop sequence ph_client_seq;
create sequence ph_client_seq
start with 1
increment by 1
nocache
nocycle;

--���ν����̵� ���̺�

create table ph_slide(
state number(2) primary key,
path varchar2(500)
);

insert into ph_slide values(1,'/resources/slider_1_bg.jpg');
insert into ph_slide values(2,'/resources/slider_1_bg.jpg');
insert into ph_slide values(3,'/resources/slider_1_bg.jpg');
create table ph_visit(
v_date date
);

--������ �� ���̺� --

create table ph_admin(
num number(5) primary key,
money number(20),
rdate date,
state number(5)
);

--������ �� ���̺� ������--
drop sequence ph_admin_seq;
create sequence ph_admin_seq
start with 1
increment by 1
nocache
nocycle;

--ȸ�� ���̺��� �θ� --
create table ph_business(
businessNum varchar(50) primary key,
companyName varchar(50),
leaderName varchar(50),
address varchar(50),
cash number(20) default 1000000
);

--ȸ�� ���̺�--
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

--quote ������ --
drop sequence ph_quoteBoard_seq;
create sequence ph_quoteBoard_seq
	start with 1
	increment by 1 
	nocache
	nocycle;
	
--�߰����  ���̺�---
	create table purchase_request(
		purchaseNum number(2) primary key,
		userid varchar2(50),  
		no number(10),
		state number(5),
		completeId varchar2(50) default '����'
	);
ALTER TABLE purchase_request ADD constraint purchase_requestforeign_fk foreign key(no) references ph_quoteBoard(no) on delete cascade;

	
---�߰���� ������---
	drop sequence purchase_request_seq;
	create sequence purchase_request_seq
	start with 1
	increment by 1 
	nocache
	nocycle;

--�������̺�--

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
	lcd number(10)
);
ALTER TABLE ph_repair ADD constraint ph_repairforeign_fk foreign key(name) references ph_phone(name) on delete cascade;

 --�����Խ��� ���̺�--
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
 );
 ALTER TABLE ph_repairBoard ADD constraint ph_repairBoardforeign_fk foreign key(userid) references ph_member(userid) on delete cascade;

--�����Խ��� ������--
drop sequence ph_repairBoard_seq;
create sequence ph_repairBoard_seq
	start with 1
	increment by 1 
	nocache
	nocycle;
 
 
--��������  ���̺�---
	create table repair_request(
		repairNum number(2) primary key,
		userid varchar2(50),  
		no number(10),
		state number(5)
	);
 ALTER TABLE repair_request ADD constraint repair_requestforeign_fk foreign key(no) references ph_repairBoard(no) on delete cascade;

--�������� ������---
	drop sequence repair_request_seq;
	create sequence repair_request_seq
	start with 1
	increment by 1 
	nocache
	nocycle;
	
	
	
--���� boardsql


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

insert into ph_boardtype values (1,'KT �̺�Ʈ');
insert into ph_boardtype values (2,'LGU+ �̺�Ʈ');
insert into ph_boardtype values (3,'SKT �̺�Ʈ');

insert into ph_boardtype values (4,'��������');
insert into ph_boardtype values (5,'�����Խ���');




-- ��ȯ ����� ������
drop table skt_pay;
drop table skt_band_yt;
drop table lg_pay;
drop table kt_pay;
-- SKT ���̺�

create table skt_pay(
payment varchar2(50) primary key,
data varchar2(10),
extra_data varchar2(40) default '�ش���� ����',
call varchar2(70),
sms varchar2(50),
fixed_month number,
fixed_month_dis number,
fares_month number,
fares_24month number,
discount number
);



-- SKT band YT �߰� �ɼ�

create table skt_band_yt(
data_option1 varchar2(70),
data_option2 varchar2(70),
data_option3 varchar2(70),
contents_sale varchar2(20),
Partnership_sale varchar2(50)
);

INSERT INTO skt_band_yt VALUES('����1 -ķ�۽� ������ ������*', '����2 - ���� 6�ð� ������ ������*', '����3 - �Ƚɿɼ� �� �� 1 *�� 1GB ���� �ӵ�����', '50% ����', '�ĸ��ٰԶ� T���� ������ ������ 2��');
INSERT INTO skt_band_yt VALUES('����1 -ķ�۽� ������ ������*', '����2 - ���� 6�ð� ������ ������*', '����3 - �Ƚɿɼ� �� �� 1 *�� 1GB ���� �ӵ�����', '����', '�ĸ��ٰԶ� T���� ������ ������ 2��');


-- LG ���̺�

create table lg_pay(
payment varchar2(50) primary key,
data varchar2(50),
extra_data varchar2(40)	default '�ش���� ����',
call varchar2(70),
sms varchar2(50),
fixed_month number,
fares_month number,
fares_24month number,
discount number
);

-- KT ���̺�

create table kt_pay(
payment varchar2(50) primary key,
data varchar2(50),
extra_data varchar2(80) default '�ش���� ����',
call varchar2(70),
sms varchar2(50),
fixed_month number,
fares_month number,
fares_24month number,
discount number
);
--SKT ����� INSERT
INSERT INTO SKT_PAY VALUES('T �ñ״�ó Master', '35GB',  '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������', '�⺻����', 110000, 110000, 22000, 528000, 88000);
INSERT INTO SKT_PAY VALUES('T �ñ״�ó Classic', '20GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������', '�⺻����', 88000, 88000, 17600,	422400,	70400);
INSERT INTO SKT_PAY VALUES('band YT ����Ʈ', '12GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ� 300��', '�⺻����', 71000, 71000,	14200, 340800,	56800);
INSERT INTO SKT_PAY VALUES('band YT 7G', '7G', '(������ �ɼ� �߰� ���� )',  '����ȭ, �̵���ȭ ������ / ���� �� �ΰ� 300��', '�⺻����', 62000, 62000, 12400, 297600, 49600);
INSERT INTO SKT_PAY VALUES('band YT 3G', '3G', '(������ �ɼ� �߰� ���� )', '����ȭ, �̵���ȭ ������', '�⺻����', 52000, 52000, 10400, 249600, 41600);
INSERT INTO SKT_PAY VALUES('band YT 1G', '1G', '(������ �ɼ� �߰� ���� )', '����ȭ, �̵���ȭ ������', '�⺻����', 42000, 42000, 8400,	201600,	33600);
INSERT INTO SKT_PAY VALUES('band YT ���̺�', '500MB', '(������ �ɼ� �߰� ���� )', '����ȭ, �̵���ȭ ������', '�⺻����', 38000, 38000, 7600, 182400, 30400);
INSERT INTO SKT_PAY VALUES('band ������ ����ƮS', '16GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ� 300��', '�⺻����', 75000, 75000, 15180, 364320, 59820);
INSERT INTO SKT_PAY VALUES('band ������ ����Ʈ', '11GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ� 300��', '�⺻����', 65890, 65890, 13200, 316800, 52690);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('band ������ 6.5G',	'6.5GB', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ� 300��', '�⺻����', 56100, 56100, 11220, 269280, 44880);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('band ������ 3.5G', '3.5GB', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ� 50��', '�⺻����', 51700, 51700, 10340, 248160, 41360);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('band ������ 2.2G', '2.3GB', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ� 50��', '�⺻����', 46200, 46200,	9240,	221760,	36960);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('band ������ 1.2G', '1.2GB', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ� 50��', '�⺻����', 39600, 39600, 7920, 190080, 31680);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('band ������ ���̺�', '300MB', '����ȭ, �̵���ȭ ������', '�⺻����', 32890, 32890, 6600, 158400, 26290);
INSERT INTO SKT_PAY VALUES('������ ���� 100', '16GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ /���� �� �ΰ� 300��', '�⺻����', 110000, 83600, 16720, 401280, 66880);
INSERT INTO SKT_PAY VALUES('������ ���� 85', '12GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ /���� �� �ΰ� 300��', '�⺻����', 93500, 71500, 14300, 343200, 57200);
INSERT INTO SKT_PAY VALUES('LTE ������ ������ 80��', '8GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ /���� �� �ΰ� 300��', '�⺻����',88000, 67375, 12375, 297000, 55000);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('������ ���� 75', '8GB', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ� 300��', '�⺻����', 82500, 61875, 12375 , 297000, 49500);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('������ ���� 69', '5GB', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ� 200��', '�⺻����', 75900, 56650, 11330, 271920, 45320);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('T���� 65', '5GB', 'SKT ���� ������ �� �� 280��' , '�⺻����', 71500, 53075, 10615, 254760, 42460);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('T���� 55', '2GB', 'SKT ���� ������ �� �� 180��', '�⺻����', 60500, 44825, 8965, 215160, 35860);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('T���� 45', '1.1GB', 'SKT ���� ������ �� �� 130��', '�⺻����',49500,  37125, 7425, 178200, 29700);
INSERT INTO SKT_PAY (payment, data, call, sms, fixed_month, fixed_month_dis, fares_month, fares_24month, discount) VALUES('T���� 35', '550MB', 'SKT ���� ������ �� �� 80��', '�⺻����', 38500, 30580, 6160, 147840, 24420);




-- LG ����� ���̺�
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('������ �Ϲ�', '300MB', '�������⺻����', '�⺻����', 32890, 6578, 157872, 26312);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('������ 1.3', '1.3GB', '�������⺻����', '�⺻����', 39490, 7898, 189552, 31592);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('������ 2.3', '2.3GB', '�������⺻����', '�⺻����', 46090, 9218, 221232, 36872);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('������ 3.6', '3.6GB', '�������⺻����', '�⺻����', 51590, 10318, 247632, 41272);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('������ 6.6', '6.6GB', '�������⺻����', '�⺻����', 55990, 11198, 268752, 44792);
INSERT INTO LG_PAY VALUES('������ �����A', '11GB', '���� 2GB ���� �ӵ� ����', '�������⺻����', '�⺻����', 65890, 13178, 316272, 52712);
INSERT INTO LG_PAY VALUES('������ �����B', '11GB', '���� 2GB ���� �ӵ� ����', '�������⺻����', '�⺻����', 74800, 14960, 359040, 59840);
INSERT INTO LG_PAY VALUES('������ �����C', '20GB', '���� 2GB ���� �ӵ� ����', '�������⺻����', '�⺻����', 88000, 17600, 422400, 70400);
INSERT INTO LG_PAY VALUES('������ �����D', '35GB', '���� 2GB ���� �ӵ� ����', '�������⺻����', '�⺻����', 110000, 22000, 528000, 88000);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE ���� 34', '750MB', '���� ������ (�׿� 115��)', '�⺻����', 37400, 5940, 142560, 31460);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE ���� 42', '1.4GB', '���� ������ (�׿� 148��)',  '�⺻����', 46200, 6930, 166320, 39270);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE ���� 52', '2.1GB', '���� ������ (�׿� 205��)', '�⺻����', 57200, 8470, 203280, 48730);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE 34', '750MB', '160��', '200��', 37400, 5940, 142560, 31460);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE 42', '1.5GB', '200��', '200��', 46200, 6930, 166320, 39270);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE 52', '2.6GB', '250��', '250', 57200, 8470, 203280, 48730);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE 62', '6GB', '350��', '350��', 68200, 9680, 232320, 58520);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE 72', '10GB', '500��', '450��', 79200, 11440, 274560, 67760);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE 85', '14GB', '750��', '650��', 93500, 13860, 332640, 79640);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE 100', '20GB', '1200��', '1000��', 110000, 16720, 401280, 93280);
INSERT INTO LG_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount)  VALUES('LTE 120', '24GB', '1500��', '1000��', 132000, 21120, 506880, 110880);




-- KT ����� ���̺�
INSERT INTO KT_PAY VALUES('�� ��������99(LTE)', '25GB', '���� 2GB ���� �ӵ� ����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 108900, 21780, 522720, 87120);
INSERT INTO KT_PAY VALUES('�� ��������77(LTE)', '17GB', '���� 2GB ���� �ӵ� ����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 84700, 16940, 406560, 67760);
INSERT INTO KT_PAY VALUES('�� ��������67(LTE)', '12GB', '���� 2GB ���� �ӵ� ����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 73700, 14740, 353760, 58960);
INSERT INTO KT_PAY VALUES('�� ��������61(LTE)', '10GB', '���� 2GB ���� �ӵ� ����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 67100, 13420, 322080, 53680);
INSERT INTO KT_PAY VALUES('�� ��������51(LTE)', '5GB', '���� 2GB ���� �ӵ� ����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 56100, 11220, 269280, 44880);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('�� ��δٿ÷�41(LTE)', '2.5GB', 'KT ����ϳ��� ������ + ���� 250��', '�⺻����', 45100, 9020, 216480, 36080);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('�� ��δٿ÷�34(LTE)', '1.5GB', 'KT ����ϳ��� ������ + ���� 185��', '�⺻����', 37400, 7480, 179520, 29920);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('�� ��δٿ÷�28(LTE)', '750MB', 'KT ����ϳ��� ������ + ���� 130��', '�⺻����', 30800, 6160, 147840, 24640);
INSERT INTO KT_PAY VALUES('Yƾ 38', '4700MB', '�ִ� 400Kbps �ӵ�����', '���� 10�ð�(45056��)', '200��/��', 38390, 7700, 184800, 30690);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('Yƾ 32', '3600MB', '���� 10�ð�(45056��)', '200��/��', 32890, 6600, 158400, 26290);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('Yƾ 27', '2000MB', '���� 10�ð�(45056��)', '200��/��', 27390, 5500, 132000, 21890);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('Yƾ 20', '1400MB', '���� 10�ð�(45056��)', '200��/��', 20900, 4180, 100320, 16720);
INSERT INTO KT_PAY VALUES('Y24 65.8', '10GB', '��2GB �ִ� 3Mbps�ӵ�����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 65890, 13200, 316800, 52690);
INSERT INTO KT_PAY VALUES('Y24 54.8', '6GB', '���� 3�ð� ������ ������ (�ӵ�����) / �д�', '�� / �̵���ȭ ������ (���� / �ΰ� 30��)', '�⺻����', 54890, 11000, 264000, 43890);
INSERT INTO KT_PAY VALUES('Y24 49.3', '3GB', '���� 3�ð� ������ ������ (�ӵ�����) / �д�', '�� / �̵���ȭ ������ (���� / �ΰ� 30��)', '�⺻����', 49390, 9900, 237600, 39490);
INSERT INTO KT_PAY VALUES('Y24 43.8', '2GB', '���� 3�ð� ������ ������ (�ӵ�����) / �д�', '�� / �̵���ȭ ������ (���� / �ΰ� 30��)', '�⺻����', 43890, 8800, 211200, 35090);
INSERT INTO KT_PAY VALUES('Y24 38.3', '1GB', '���� 3�ð� ������ ������ (�ӵ�����) / �д�', '�� / �̵���ȭ ������ (���� / �ΰ� 30��)', '�⺻����', 38390, 7700, 184800, 30690);
INSERT INTO KT_PAY VALUES('Y24 32.8', '300MB', '���� 3�ð� ������ ������ (�ӵ�����) / �д�', '�� / �̵���ȭ ������ (���� / �ΰ� 30��)', '�⺻����', 32890, 6600, 158400, 26290);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('LTE-��520', '2.5GB', '62000��', '�⺻����', 41800, 8360, 200640, 33440);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('LTE-��420', '1.5GB', '52000��', '20000��', 34100, 6820, 163680, 27280);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('LTE-��340', '750MB', '34000��', '20000��', 29700, 5940, 142560, 23760);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('LTE-��240', '500MB', '28000��', '20000��', 25300, 5060, 121440, 20240);
INSERT INTO KT_PAY (payment, data, call, sms, fixed_month, fares_month, fares_24month, discount) VALUES('LTE-��190', '300MB', '20000��', '20000��', 20900, 4180, 100320, 16720);

