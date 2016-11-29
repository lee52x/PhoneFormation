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

drop table ph_phone;

create sequence ph_phone_seq
	start with 1
	increment by 1
	nocycle
	nocache;


--�ڵ��� ����, �ڵ�����, �ڵ�������, �������, �����
create table ph_phone(
	no number primary key,
	name varchar2(100),
	image LONG not null,
	manufacture varchar2(15) not null,
	release_date varchar2(30) not null
);

--�Ｚ����
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge', '/resources/images/phone/GalaxyS7edge_ȭ��Ʈ��.png', '�Ｚ����', '2016��11��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge Olympic Games Limited Edition', '/resources/images/phone/GalaxyS7edgeOlympic_��.png', '�Ｚ����', '2016��07��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7 edge Injustice Edition', '/resources/images/phone/GalaxyS7edgeInjustice_��.png', '�Ｚ����', '2016��06��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S7', '/resources/images/phone/GalaxyS7_�����н�.png', '�Ｚ����', '2016��07��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note5', '/resources/images/phone/Galaxynote5_����÷�Ƽ��.png', '�Ｚ����', '2015��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6 edge plus', '/resources/images/phone/GalaxyS6_����÷�Ƽ��.png', '�Ｚ����', '2015��08��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6 edge', '/resources/images/phone/GalaxyS6edge_����÷�Ƽ��.png', '�Ｚ����', '2015��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy S6', '/resources/images/phone/GalaxyS6_ȭ��Ʈ��.png', '�Ｚ����', '2015��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A8(2016)', '/resources/images/phone/GalaxyA8(2016)_�ǹ�.png', '�Ｚ����', '2016��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A3(2016)', '/resources/images/phone/GalaxyA3(2016)_��.png', '�Ｚ����', '2016��03��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A5(2016)', '/resources/images/phone/GalaxyA5(2016)_��.png', '�Ｚ����', '2016��01��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy A7(2016)', '/resources/images/phone/GalaxyA7(2016)_��.png', '�Ｚ����', '2016��01��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J3(2016)', '/resources/images/phone/GalaxyJ3(2016)_ȭ��Ʈ.png', '�Ｚ����', '2016��05��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J5(2016)', '/resources/images/phone/GalaxyJ5(2016)_��.png', '�Ｚ����', '2016��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy J7(2016)', '/resources/images/phone/GalaxyJ7(2016)_��.png', '�Ｚ����', '2016��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note edge', '/resources/images/phone/GalaxynoteEdge_ȭ��Ʈ.png', '�Ｚ����', '2014��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note4 S-LTE', '/resources/images/phone/Galaxynote4SLTE_ȭ��Ʈ.png', '�Ｚ����', '2015��01��');
insert into ph_phone values (ph_phone_seq.nextval, 'Galaxy note4', '/resources/images/phone/Galaxynote4_ȭ��Ʈ.png', '�Ｚ����', '2014��09��');

--����
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 7', '/resources/images/phone/iPhone7_�ǹ�.png', '����', '2016��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 7 plus', '/resources/images/phone/iPhone7Plus_�ǹ�.png', '����', '2016��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6s', '/resources/images/phone/iPhone6s_�ǹ�.png', '����', '2015��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6s Plus', '/resources/images/phone/iPhone6sPlus_�ǹ�.png', '����', '2015��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhone 6 Plus', '/resources/images/phone/iPhone6Plus_�ǹ�.png', '����', '2014��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'iPhoneSE', '/resources/images/phone/iPhoneSE_������.png', '����', '2016��05��');

--LG����
insert into ph_phone values (ph_phone_seq.nextval, 'V20', '/resources/images/phone/V20_�ǹ�.png', 'LG����', '2016��09��');
insert into ph_phone values (ph_phone_seq.nextval, 'V10', '/resources/images/phone/V10_����ȭ��Ʈ.png', 'LG����', '2015��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'G5', '/resources/images/phone/G5_�ǹ�.png', 'LG����', '2016��03��');
insert into ph_phone values (ph_phone_seq.nextval, 'G4', '/resources/images/phone/G4_�����ȭ��Ʈ.png', 'LG����', '2015��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'GStylo', '/resources/images/phone/GStylo_ȭ��Ʈ.png', 'LG����', '2015��04��');
insert into ph_phone values (ph_phone_seq.nextval, 'GFlex2', '/resources/images/phone/GFlex2_�÷�Ƽ�ѽǹ�.png', 'LG����', '2015��01��');
insert into ph_phone values (ph_phone_seq.nextval, 'G3Screen', '/resources/images/phone/G3Screen_ȭ��Ʈ.png', 'LG����', '2014��10��');
insert into ph_phone values (ph_phone_seq.nextval, 'G3A', '/resources/images/phone/G3A_ȭ��Ʈ.png', 'LG����', '2014��08��');
insert into ph_phone values (ph_phone_seq.nextval, 'G3Cat6', '/resources/images/phone/G3Cat6_��ũȭ��Ʈ.png', 'LG����', '2014��08��');
insert into ph_phone values (ph_phone_seq.nextval, 'G3', '/resources/images/phone/G3_��ũȭ��Ʈ.png', 'LG����', '2014��05��');

--select no, name from ph_phone;
--drop table ph_color;
create table ph_color( --�ڵ��� ����
	no number,
	color varchar2(30) not null,
	image LONG not null,
	foreign key(no) references ph_phone(no),
	primary key(no,color)
);

--�Ｚ����
insert into ph_color values (1, 'ȭ��Ʈ��', '/resources/images/phone/GalaxyS7edge_ȭ��Ʈ��.png');
insert into ph_color values (1, '����ڶ�', '/resources/images/phone/GalaxyS7edge_����ڶ�.png');
insert into ph_color values (1, '�����н�', '/resources/images/phone/GalaxyS7edge_�����н�.png');
insert into ph_color values (1, '����÷�Ƽ��', '/resources/images/phone/GalaxyS7edge_����÷�Ƽ��.png');
insert into ph_color values (1, '�ǹ�ƼŸ��', '/resources/images/phone/GalaxyS7edge_�ǹ�ƼŸ��.png');
insert into ph_color values (1, '��ũ���', '/resources/images/phone/GalaxyS7edge_��ũ���.png');

insert into ph_color values (2, '��', '/resources/images/phone/GalaxyS7edgeOlympic_��.png');

insert into ph_color values (3, '��', '/resources/images/phone/GalaxyS7edgeInjustice_��.png');

insert into ph_color values (4, '�����н�', '/resources/images/phone/GalaxyS7_�����н�.png');
insert into ph_color values (4, 'ȭ��Ʈ��', '/resources/images/phone/GalaxyS7_ȭ��Ʈ��.png');
insert into ph_color values (4, '�ǹ�ƼŸ��', '/resources/images/phone/GalaxyS7_�ǹ�ƼŸ��.png');
insert into ph_color values (4, '����÷�Ƽ��', '/resources/images/phone/GalaxyS7_����÷�Ƽ��.png');
insert into ph_color values (4, '��ũ���', '/resources/images/phone/GalaxyS7_��ũ���.png');
insert into ph_color values (4, '��ũ��μ�', '/resources/images/phone/GalaxyS7_��ũ��μ�.png');

insert into ph_color values (5, '����÷�Ƽ��', '/resources/images/phone/Galaxynote5_����÷�Ƽ��.png');
insert into ph_color values (5, '�������̾�', '/resources/images/phone/Galaxynote5_�������̾�.png');
insert into ph_color values (5, '�ǹ�ƼŸ��', '/resources/images/phone/Galaxynote5_�ǹ�ƼŸ��.png');
insert into ph_color values (5, 'ȭ��Ʈ��', '/resources/images/phone/Galaxynote5_ȭ��Ʈ��.png');
insert into ph_color values (5, '��ũ���', '/resources/images/phone/Galaxynote5_��ũ���.png');

insert into ph_color values (6, '����÷�Ƽ��', '/resources/images/phone/GalaxyS6edgePlus_����÷�Ƽ��.png');
insert into ph_color values (6, '�������̾�', '/resources/images/phone/GalaxyS6edgePlus_�������̾�.png');

insert into ph_color values (7, '����÷�Ƽ��', '/resources/images/phone/GalaxyS6edge_����÷�Ƽ��.png');
insert into ph_color values (7, 'ȭ��Ʈ��', '/resources/images/phone/GalaxyS6edge_ȭ��Ʈ��.png');
insert into ph_color values (7, '�������̾�', '/resources/images/phone/GalaxyS6edge_�������̾�.png');
insert into ph_color values (7, '�׸����޶���', '/resources/images/phone/GalaxyS6edge_�׸����޶���.png');

insert into ph_color values (8, 'ȭ��Ʈ��', '/resources/images/phone/GalaxyS6_ȭ��Ʈ��.png');
insert into ph_color values (8, '�������̾�', '/resources/images/phone/GalaxyS6_�������̾�.png');
insert into ph_color values (8, '����÷�Ƽ��', '/resources/images/phone/GalaxyS6_����÷�Ƽ��.png');
insert into ph_color values (8, '�������̾�', '/resources/images/phone/GalaxyS6_�������̾�.png');

insert into ph_color values (9, '�ǹ�', '/resources/images/phone/GalaxyA8(2016)_�ǹ�.png');
insert into ph_color values (9, '��ũ���', '/resources/images/phone/GalaxyA8(2016)_��ũ���.png');
insert into ph_color values (9, 'ȭ��Ʈ���', '/resources/images/phone/GalaxyA8(2016)_ȭ��Ʈ���.png');

insert into ph_color values (10, '��', '/resources/images/phone/GalaxyA3(2016)_��.png');
insert into ph_color values (10, 'ȭ��Ʈ', '/resources/images/phone/GalaxyA3(2016)_ȭ��Ʈ.png');
insert into ph_color values (10, '������ũ', '/resources/images/phone/GalaxyA3(2016)_������ũ.png');

insert into ph_color values (11, '��', '/resources/images/phone/GalaxyA5(2016)_��.png');
insert into ph_color values (11, 'ȭ��Ʈ', '/resources/images/phone/GalaxyA5(2016)_ȭ��Ʈ.png');
insert into ph_color values (11, '������ũ', '/resources/images/phone/GalaxyA5(2016)_������ũ.png');

insert into ph_color values (12, '��', '/resources/images/phone/GalaxyA7(2016)_��.png');
insert into ph_color values (12, 'ȭ��Ʈ', '/resources/images/phone/GalaxyA7(2016)_ȭ��Ʈ.png');
insert into ph_color values (12, '������ũ', '/resources/images/phone/GalaxyA7(2016)_������ũ.png');

insert into ph_color values (13, 'ȭ��Ʈ', '/resources/images/phone/GalaxyJ3(2016)_ȭ��Ʈ.png');

insert into ph_color values (14, '��', '/resources/images/phone/GalaxyJ5(2016)_��.png');
insert into ph_color values (14, 'ȭ��Ʈ', '/resources/images/phone/GalaxyJ5(2016)_ȭ��Ʈ.png');

insert into ph_color values (15, '���', '/resources/images/phone/GalaxyJ7(2016)_���.png');
insert into ph_color values (15, '��', '/resources/images/phone/GalaxyJ7(2016)_��.png');

insert into ph_color values (16, 'ȭ��Ʈ', '/resources/images/phone/GalaxynoteEdge_ȭ��Ʈ.png');
insert into ph_color values (16, '��', '/resources/images/phone/GalaxynoteEdge_��.png');

insert into ph_color values (17, 'ȭ��Ʈ', '/resources/images/phone/Galaxynote4SLTE_ȭ��Ʈ.png');
insert into ph_color values (17, '��', '/resources/images/phone/Galaxynote4SLTE_��.png');
insert into ph_color values (17, '�ǹ�', '/resources/images/phone/Galaxynote4SLTE_�ǹ�.png');
insert into ph_color values (17, '��ũ', '/resources/images/phone/Galaxynote4SLTE_��ũ.png');
insert into ph_color values (17, '����', '/resources/images/phone/Galaxynote4SLTE_����.png');

insert into ph_color values (18, 'ȭ��Ʈ', '/resources/images/phone/Galaxynote4_ȭ��Ʈ.png');
insert into ph_color values (18, '��', '/resources/images/phone/Galaxynote4_��.png');
insert into ph_color values (18, '���', '/resources/images/phone/Galaxynote4_���.png');
insert into ph_color values (18, '��ũ', '/resources/images/phone/Galaxynote4_��ũ.png');
insert into ph_color values (18, '����', '/resources/images/phone/Galaxynote4_����.png');

--����
insert into ph_color values (19, '������', '/resources/images/phone/iPhone7_�ε���.png');
insert into ph_color values (19, '���', '/resources/images/phone/iPhone7_���.png');
insert into ph_color values (19, '�ǹ�', '/resources/images/phone/iPhone7_�ǹ�.png');
insert into ph_color values (19, '��', '/resources/images/phone/iPhone7_��.png');
insert into ph_color values (19, '��Ʈ��', '/resources/images/phone/iPhone7_��Ʈ��.png');

insert into ph_color values (20, '������', '/resources/images/phone/iPhone7Plus_������.png');
insert into ph_color values (20, '���', '/resources/images/phone/iPhone7Plus_���.png');
insert into ph_color values (20, '�ǹ�', '/resources/images/phone/iPhone7Plus_�ǹ�.png');
insert into ph_color values (20, '��', '/resources/images/phone/iPhone7Plus_��.png');
insert into ph_color values (20, '��Ʈ��', '/resources/images/phone/iPhone7Plus_��Ʈ��.png');

insert into ph_color values (21, '�����̽��׷���', '/resources/images/phone/iPhone6s_�����̽��׷���.png');
insert into ph_color values (21, '�ǹ�', '/resources/images/phone/iPhone6s_�ǹ�.png');
insert into ph_color values (21, '���', '/resources/images/phone/iPhone6s_���.png');
insert into ph_color values (21, '������', '/resources/images/phone/iPhone6s_������.png');

insert into ph_color values (22, '�����̽��׷���', '/resources/images/phone/iPhone6sPlus_�����̽��׷���.png');
insert into ph_color values (22, '�ǹ�', '/resources/images/phone/iPhone6sPlus_�ǹ�.png');
insert into ph_color values (22, '���', '/resources/images/phone/iPhone6sPlus_���.png');
insert into ph_color values (22, '������', '/resources/images/phone/iPhone6sPlus_������.png');

insert into ph_color values (23, '���', '/resources/images/phone/iPhone6Plus_���.png');
insert into ph_color values (23, '�����̽��׷���', '/resources/images/phone/iPhone6Plus_�����̽��׷���.png');
insert into ph_color values (23, '�ǹ�', '/resources/images/phone/iPhone6Plus_�ǹ�.png');

insert into ph_color values (24, '�����̽��׷���', '/resources/images/phone/iPhoneSE_�����̽��׷���.png');
insert into ph_color values (24, '������', '/resources/images/phone/iPhoneSE_������.png');

--LG����
insert into ph_color values (25, 'Ƽź', '/resources/images/phone/V20_Ƽź.png');
insert into ph_color values (25, '�ǹ�', '/resources/images/phone/V20_�ǹ�.png');
insert into ph_color values (25, '��ũ', '/resources/images/phone/V20_��ũ.png');

insert into ph_color values (26, '���� ȭ��Ʈ', '/resources/images/phone/V10_����ȭ��Ʈ.png');
insert into ph_color values (26, '��� ������', '/resources/images/phone/V10_���������.png');
insert into ph_color values (26, '���� ���', '/resources/images/phone/V10_���Ǻ��.png');

insert into ph_color values (27, 'Ƽź', '/resources/images/phone/G5_Ƽź.png');
insert into ph_color values (27, '�ǹ�', '/resources/images/phone/G5_�ǹ�.png');
insert into ph_color values (27, '��ũ', '/resources/images/phone/G5_��ũ.png');
insert into ph_color values (27, '���', '/resources/images/phone/G5_���.png');

insert into ph_color values (28, '�����ȭ��Ʈ', '/resources/images/phone/G4_�����ȭ��Ʈ.png');
insert into ph_color values (28, '��Ż���׷���', '/resources/images/phone/G4_��Ż���׷���.png');
insert into ph_color values (28, 'õ�����׺���', '/resources/images/phone/G4_õ�����׺���.png');
insert into ph_color values (28, 'õ�����׺�', '/resources/images/phone/G4_õ�����׺�.png');

insert into ph_color values (29, 'Ƽź', '/resources/images/phone/GStylo_Ƽź.png');
insert into ph_color values (29, 'ȭ��Ʈ', '/resources/images/phone/GStylo_ȭ��Ʈ.png');

insert into ph_color values (30, '�÷�Ƽ�ѽǹ�', '/resources/images/phone/GFlex2_�÷�Ƽ�ѽǹ�.png');
insert into ph_color values (30, '�ö�����', '/resources/images/phone/GFlex2_�ö�����.png');

insert into ph_color values (31, 'ȭ��Ʈ', '/resources/images/phone/G3Screen_ȭ��Ʈ.png');
insert into ph_color values (31, '��', '/resources/images/phone/G3Screen_��.png');

insert into ph_color values (32, 'Ƽź', '/resources/images/phone/G3A_Ƽź.png');
insert into ph_color values (32, 'ȭ��Ʈ', '/resources/images/phone/G3A_ȭ��Ʈ.png');

insert into ph_color values (33, '��Ż����', '/resources/images/phone/G3Cat6_��Ż����.png');
insert into ph_color values (33, '��ũȭ��Ʈ', '/resources/images/phone/G3Cat6_��ũȭ��Ʈ.png');
insert into ph_color values (33, '���ΰ��', '/resources/images/phone/G3Cat6_���ΰ��.png');
insert into ph_color values (33, '����', '/resources/images/phone/G3Cat6_����.png');
insert into ph_color values (33, '�����̿÷�', '/resources/images/phone/G3Cat6_�����̿÷�.png');

insert into ph_color values (34, '��Ż����', '/resources/images/phone/G3_��Ż����.png');
insert into ph_color values (34, '��ũȭ��Ʈ', '/resources/images/phone/G3_��ũȭ��Ʈ.png');
insert into ph_color values (34, '���ΰ��', '/resources/images/phone/G3_���ΰ��.png');

--drop table ph_capacity;
create table ph_capacity( --�ڵ��� �뷮
	no number,
	capacity varchar2(15) not null,
	release_price number not null, --���
	foreign key(no) references ph_phone(no),
	primary key(no, capacity)
);

--�Ｚ����
insert into ph_capacity values (1, '32GB', 924000);
insert into ph_capacity values (1, '64GB', 968000);
insert into ph_capacity values (2, '32GB', 1067000);
insert into ph_capacity values (3, '32GB', 1199000);
insert into ph_capacity values (4, '32GB', 836000);
insert into ph_capacity values (4, '64GB', 880000);
insert into ph_capacity values (5, '32GB', 899800);
insert into ph_capacity values (5, '64GB', 965800);
insert into ph_capacity values (5, '128GB', 999000);
insert into ph_capacity values (6, '32GB', 599500);
insert into ph_capacity values (7, '32GB', 735900);
insert into ph_capacity values (7, '64GB', 755700);
insert into ph_capacity values (8, '32GB', 858000);
insert into ph_capacity values (8, '64GB', 924000);
insert into ph_capacity values (9, '32GB', 649000);
insert into ph_capacity values (10, '16GB', 352000);
insert into ph_capacity values (11, '16GB', 429000);
insert into ph_capacity values (12, '16GB', 528000);
insert into ph_capacity values (13, '8GB', 231000);
insert into ph_capacity values (14, '16GB', 297000);
insert into ph_capacity values (15, '16GB', 363000);
insert into ph_capacity values (16, '32GB', 1067000);
insert into ph_capacity values (17, '32GB', 799700);
insert into ph_capacity values (18, '32GB', 957000);

--����
insert into ph_capacity values (19, '32GB', 869000);
insert into ph_capacity values (19, '128GB', 999900);
insert into ph_capacity values (19, '256GB', 1130800);
insert into ph_capacity values (20, '32GB', 1021900);
insert into ph_capacity values (20, '128GB', 1152800);
insert into ph_capacity values (20, '256GB', 1283700);
insert into ph_capacity values (21, '16GB', 869000);
insert into ph_capacity values (21, '64GB', 999900);
insert into ph_capacity values (21, '128GB', 1130800);
insert into ph_capacity values (22, '16GB', 999900);
insert into ph_capacity values (22, '64GB', 1130800);
insert into ph_capacity values (22, '128GB', 1261700);
insert into ph_capacity values (23, '16GB', 899800);
insert into ph_capacity values (23, '64GB', 1050600);
insert into ph_capacity values (24, '16GB', 569800);
insert into ph_capacity values (24, '64GB', 699600);

--LG����
insert into ph_capacity values (25, '64GB', 899800);
insert into ph_capacity values (26, '64GB', 599500);
insert into ph_capacity values (27, '32GB', 699600);
insert into ph_capacity values (28, '32GB', 599500);
insert into ph_capacity values (29, '8GB', 517000);
insert into ph_capacity values (30, '32GB', 899800);
insert into ph_capacity values (31, '32GB', 550000);
insert into ph_capacity values (32, '32GB', 451000);
insert into ph_capacity values (33, '32GB', 649000);
insert into ph_capacity values (34, '32GB', 499400);

--�Ｚ���ڽ���

--���μ���

create table Sspec_processor(
	no number primary key,
	func1 varchar2(50),
	func2 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_processor values(1, 'CPU�ӵ�', 'CPU����');

create table Sspec_processor_value(
	no number primary key,
	value1 varchar2(50),
	value2 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_processor_value values(1, 's.1GHz, 1.5GHz', 'Octa-Core');

--���÷���

create table Sspec_display(
	no number primary key,
	func1 varchar2(50),
	func2 varchar2(50),
	func3 varchar2(50),
	func4 varchar2(50),
	func5 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_display values (1, 'ũ��(Main)', '�ػ�(Main)', '����(Main)', '���ɵ�(Main)', 'S�� ����');

create table Sspec_display_value(
	no number primary key,
	value1 varchar2(50),
	value2 varchar2(50),
	value3 varchar2(50),
	value4 varchar2(50),
	value5 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_display_value values (1,'139.5mm','2560 X 1440 (Quad HD)','dual edge Super AMOLED', '16M', '�ƴϿ�');

--ī�޶�
create table Sspec_camera(
	no number primary key,
	func1 varchar2(50),
	func2 varchar2(50),
	func3 varchar2(50),
	func4 varchar2(50),
	func5 varchar2(50),
	func6 varchar2(50),
	func7 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_camera values (1,'������ ��ȭ �ػ�','���� ī�޶� - ȭ��','���� ī�޶� - ������ value','���� ī�޶� - ȭ��','���� ī�޶� - ������ value','���� ī�޶� - �÷���', '���� ī�޶� - ���� ��Ŀ��');

create table Sspec_camera_value(
	no number primary key,
	value1 varchar2(50),
	value2 varchar2(50),
	value3 varchar2(50),
	value4 varchar2(50),
	value5 varchar2(50),
	value6 varchar2(50),
	value7 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_camera_value values (1,'UHD 4K (3840 x 2160) @30fps','Dual Pixel 12.0 MP','f/1.7','CMOS 5.0 MP','f/1.7','��', '��');

--�޸�

create table Sspec_memory(
	no number primary key,
	func1 varchar2(50),
	func2 varchar2(50),
	func3 varchar2(50),
	func4 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_memory values (1,'Ram Size(GB)','ROM Size(GB)','����� �� �ִ� �޸�','���� �޸� ����');

create table Sspec_memory_value(
	no number primary key,
	value1 varchar2(50),
	value2 varchar2(50),
	value3 varchar2(50),
	value4 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_memory_value values (1,'4GB','32GB','23.5GB','MicroSD (�ִ�256GB)');

--��Ʈ��ũ

create table Sspec_network(
	no number primary key,
	func1 varchar2(50),
	func2 varchar2(50),
	func3 varchar2(50),
	func4 varchar2(50),
	func5 varchar2(50),
	func6 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_network values (1,'Type of SIM Slot','2G GSM','3G UMTS','3G TD-SCDMA','4G FDD LTE','4G TDD LTE');

create table Sspec_network_value(
	no number primary key,
	value1 varchar2(50),
	value2 varchar2(50),
	value3 varchar2(50),
	value4 varchar2(50),
	value5 varchar2(200),
	value6 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_network_value values (1,'SIM 1 + MicroSD','GSM900, DCS1800, PCS1900','B1(2100), B2(1900), B5(850)','B34(2010), B39(1880)','B1(2100), B2(1900), B3(1800), B4(AWS), B5(850), B7(2600), B8(900), B12(700), B17(700), B18(800), B19(800), B20(800), B25(1900), B26(800), B28(700)','B38(2600), B39(1900), B40(2300), B41(2500)');

--����
create table Sspec_connect(
	no number primary key,
	func1 varchar2(50),
	func2 varchar2(50),
	func3 varchar2(50),
	func4 varchar2(50),
	func5 varchar2(50),
	func6 varchar2(50),
	func7 varchar2(50),
	func8 varchar2(50),
	func9 varchar2(50),
	func10 varchar2(50),
	func11 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_connect values (1,'ANT+','USB ����','��ġ ���','�̾���','MHL','Wi-Fi','Wi-Fi Direct','������� ����','NFC','������� ��������','PC��ũ');

create table Sspec_connect_value(
	no number primary key,
	value1 varchar2(50),
	value2 varchar2(50),
	value3 varchar2(50),
	value4 varchar2(50),
	value5 varchar2(50),
	value6 varchar2(50),
	value7 varchar2(50),
	value8 varchar2(50),
	value9 varchar2(50),
	value10 varchar2(100),
	value11 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_connect_value values (1,'��','USB 2.0','GPS, Glonass, Beidou','3.5mm Stereo','�ƴϿ�','802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO','��','Bluetooth v4.2','��','A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP','Smart Switch (PC version)');

--�ü��, �⺻���, ����, �ܰ����

create table Sspec_specifications(
	no number primary key,
	func1 varchar2(50),
	func2 varchar2(50),
	func3 varchar2(50),
	func4 varchar2(50),
	func5 varchar2(50),
	func6 varchar2(50),
	func7 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_specifications values (1,'ANT+','�ü��','����','����','ũ��(����X����X�β�, mm)', '����(g)','����');

create table Sspec_specifications_value(
	no number primary key,
	value1 varchar2(50),
	value2 varchar2(50),
	value3 varchar2(50),
	value4 varchar2(50),
	value5 varchar2(50),
	value6 varchar2(50),
	value7 varchar2(200),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_specifications_value values (1,'��','Android','�� ���н�','��ġ ��','150.9 x 72.6 x 7.7','157','���ӵ� ����, ��� ����, ���� ����, ���̷� ����, ���ڱ� ����, Ȧ ����, �ɹڼ� ���� ����, ���� ����, RGB �� ����');

--���͸�

create table Sspec_battery(
	no number primary key,
	func1 varchar2(50),
	func2 varchar2(50),
	func3 varchar2(50),
	func4 varchar2(50),
	func5 varchar2(50),
	func6 varchar2(50),
	func7 varchar2(50),
	func8 varchar2(200),
	func9 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_battery values (1,'���ͳ� ��� �ð�(3G)(Hours)','���ͳ� ��� �ð�(LTE)(Hours)','���ͳ� ���ð�(Wi-Fi)(Hours)','���� ��� �ð�(Hours)','ǥ�� ���͸� �뷮(mAh)', '��ü ����','����� ��� �ð�(Hours)','����� ��� �ð�(Hours, Always OnDisplay Off)','���� ��ȭ�ð�(3G WCDMA)(Hours)');

create table Sspec_battery_value(
	no number primary key,
	value1 varchar2(50),
	value2 varchar2(50),
	value3 varchar2(50),
	value4 varchar2(50),
	value5 varchar2(50),
	value6 varchar2(50),
	value7 varchar2(50),
	value8 varchar2(50),
	value9 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_battery_value values (1,'�ִ�12','�ִ�15','�ִ�16','�ִ�18','3600','�ƴϿ�','�ִ�62','�ִ�81','�ִ�27');

--�����/����

create table Sspec_audio(
	no number primary key,
	func1 varchar2(50),
	func2 varchar2(50),
	func3 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_audio values (1,'������ ���� ����','������ ���� �ػ�','����� ���� ����');

create table Sspec_audio_value(
	no number primary key,
	value1 varchar2(100),
	value2 varchar2(100),
	value3 varchar2(100),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_audio_value values (1,'MP4, M4V, 3GP, 3G2, WMV, ASF, AVI, FLV, MKV, WEBM','UHD 4K (3840 x 2160) @60fps','MP3, M4A, 3GA, AAC, OGG, OGA, WAV, WMA, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA');

--����

create table Sspec_service(
	no number primary key,
	func1 varchar2(50),
	func2 varchar2(50),
	func3 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_service values (1,'Gear ����Ʈ','S���̽�','�����TV');

create table Sspec_service_value(
	no number primary key,
	value1 varchar2(200),
	value2 varchar2(50),
	value3 varchar2(50),
	foreign key(no) references ph_phone(no)
);

insert into Sspec_service_value values (1,'��� ��Ŭ(�Ŵ��� ����Ʈ), ��� ��, ���1, ���2, ���2 �׿�, ��� S, ��� S2, ��� VR','��','��');
