-- ����� ������

-- SKT ���̺�
drop table skt_pay;
create table skt_pay(
	payment 			varchar2(50) 	primary key,
	data 					varchar2(10),
	extra_data			varchar2(40),
	call					varchar2(70),
	sms					varchar2(50),
	fixed_month		number,
	fixed_month_dis	number,
	fares_month		number,
	fares_24month		number,
	discount				number

);

-- SKT band YT �߰� �ɼ�
drop table skt_band_yt;
create table skt_band_yt(
	data_option1			varchar2(70),
	data_option2			varchar2(70),
	data_option3			varchar2(70),
	contents_sale			varchar2(20),
	Partnership_sale		varchar2(50)
);

INSERT INTO skt_band_yt VALUES('����1 -ķ�۽� ������ ������*', '����2 - ���� 6�ð� ������ ������*', '����3 - �Ƚɿɼ� �� �� 1 *�� 1GB ���� �ӵ�����', '50% ����', '�ĸ��ٰԶ� T���� ������ ������ 2��');
INSERT INTO skt_band_yt VALUES('����1 -ķ�۽� ������ ������*', '����2 - ���� 6�ð� ������ ������*', '����3 - �Ƚɿɼ� �� �� 1 *�� 1GB ���� �ӵ�����', '����', '�ĸ��ٰԶ� T���� ������ ������ 2��');

select * from skt_band_yt;


-- LG ���̺�
drop table lg_pay;
create table lg_pay(
	payment 			varchar2(50) 	primary key,
	data 					varchar2(50),
	extra_data			varchar2(40),
	call					varchar2(70),
	sms					varchar2(50),
	fixed_month		number,
	fares_month		number,
	fares_24month		number,
	discount				number

);

-- KT ���̺�
drop table kt_pay;
create table kt_pay(
	payment 			varchar2(50) 	primary key,
	data 					varchar2(50),
	extra_data			varchar2(80),
	call					varchar2(70),
	sms					varchar2(50),
	fixed_month		number,
	fares_month		number,
	fares_24month		number,
	discount				number

);

select * from KT_PAY;


select * from SKT_PAY;

select * from SKT_PAY
where payment like '%�ñ״�ó%'; 

--SKT ����� INSERT
INSERT INTO SKT_PAY VALUES('T �ñ״�ó Master', '35GB',  '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������', '�⺻����', 110000, 110000, 22000, 528000, 88000);
INSERT INTO SKT_PAY VALUES('T �ñ״�ó Classic', '20GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������', '�⺻����', 88000, 88000, 17600,	422400,	70400);
INSERT INTO SKT_PAY VALUES('band YT ����Ʈ', '12GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ���ȭ 300��', '�⺻����', 71000, 71000,	14200, 340800,	56800);
INSERT INTO SKT_PAY VALUES('band YT 7G', '7G', '(������ �ɼ� �߰� ���� )',  '����ȭ, �̵���ȭ ������ / ���� �� �ΰ���ȭ 300��', '�⺻����', 62000, 62000, 12400, 297600, 49600);
INSERT INTO SKT_PAY VALUES('band YT 3G', '3G', '(������ �ɼ� �߰� ���� )', '����ȭ, �̵���ȭ ������', '�⺻����', 52000, 52000, 10400, 249600, 41600);
INSERT INTO SKT_PAY VALUES('band YT 1G', '1G', '(������ �ɼ� �߰� ���� )', '����ȭ, �̵���ȭ ������', '�⺻����', 42000, 42000, 8400,	201600,	33600);
INSERT INTO SKT_PAY VALUES('band YT ���̺�', '500MB', '(������ �ɼ� �߰� ���� )', '����ȭ, �̵���ȭ ������', '�⺻����', 38000, 38000, 7600, 182400, 30400);
INSERT INTO SKT_PAY VALUES('band ������ ����ƮS', '16GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ���ȭ 300��', '�⺻����', 75000, 75000, 15180, 364320, 59820);
INSERT INTO SKT_PAY VALUES('band ������ ����Ʈ', '11GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ���ȭ 300��', '�⺻����', 65890, 65890, 13200, 316800, 52690);
INSERT INTO SKT_PAY VALUES('band ������ 6.5G',	'6.5GB',  '', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ���ȭ 300��', '�⺻����', 56100, 56100, 11220, 269280, 44880);
INSERT INTO SKT_PAY VALUES('band ������ 3.5G', '3.5GB', '', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ���ȭ 50��', '�⺻����', 51700, 51700, 10340, 248160, 41360);
INSERT INTO SKT_PAY VALUES('band ������ 2.2G', '2.3GB', '', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ���ȭ 50��', '�⺻����', 46200, 46200,	9240,	221760,	36960);
INSERT INTO SKT_PAY VALUES('band ������ 1.2G', '1.2GB', '', '����ȭ, �̵���ȭ ������ / ���� �� �ΰ���ȭ 50��', '�⺻����', 39600, 39600, 7920, 190080, 31680);
INSERT INTO SKT_PAY VALUES('band ������ ���̺�', '300MB', '', '����ȭ, �̵���ȭ ������', '�⺻����', 32890, 32890, 6600, 158400, 26290);
INSERT INTO SKT_PAY VALUES('������ ���� 100', '16GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ �ΰ� / ���� 300��', '�⺻����', 110000, 83600, 16720, 401280, 66880);
INSERT INTO SKT_PAY VALUES('������ ���� 85', '12GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ �ΰ� / ���� 300��', '�⺻����', 93500, 71500, 14300, 343200, 57200);
INSERT INTO SKT_PAY VALUES('LTE ������ ������ 80��', '8GB', '���� 2GB ���� �ӵ� ����', '����ȭ, �̵���ȭ ������ �ΰ� / ���� 300��', '�⺻����',88000, 67375, 12375, 297000, 55000);
INSERT INTO SKT_PAY VALUES('������ ���� 75', '8GB', '', '����ȭ, �̵���ȭ ������ �ΰ� / ���� 300��', '�⺻����', 82500, 61875, 12375 , 297000, 49500);
INSERT INTO SKT_PAY VALUES('������ ���� 69', '5GB', '', '����ȭ, �̵���ȭ ������ �ΰ� / ���� 200��', '�⺻����', 75900, 56650, 11330, 271920, 45320);
INSERT INTO SKT_PAY VALUES('T���� 65', '5GB', '', 'SKT ���� ������ �� �� 280��' , '�⺻����', 71500, 53075, 10615, 254760, 42460);
INSERT INTO SKT_PAY VALUES('T���� 55', '2GB', '', 'SKT ���� ������ �� �� 180��', '�⺻����', 60500, 44825, 8965, 215160, 35860);
INSERT INTO SKT_PAY VALUES('T���� 45', '1.1GB', '', 'SKT ���� ������ �� �� 130��', '�⺻����',49500,  37125, 7425, 178200, 29700);
INSERT INTO SKT_PAY VALUES('T���� 35', '550MB', '', 'SKT ���� ������ �� �� 80��', '�⺻����', 38500, 30580, 6160, 147840, 24420);


select * from LG_PAY;

-- LG ����� ���̺�
INSERT INTO LG_PAY VALUES('������ �Ϲ�', '300MB', '', '�������⺻����', '�⺻����', 32890, 6578, 157872, 26312);
INSERT INTO LG_PAY VALUES('������ 1.3', '1.3GB', '', '�������⺻����', '�⺻����', 39490, 7898, 189552, 31592);
INSERT INTO LG_PAY VALUES('������ 2.3', '2.3GB', '', '�������⺻����', '�⺻����', 46090, 9218, 221232, 36872);
INSERT INTO LG_PAY VALUES('������ 3.6', '3.6GB', '', '�������⺻����', '�⺻����', 51590, 10318, 247632, 41272);
INSERT INTO LG_PAY VALUES('������ 6.6', '6.6GB', '', '�������⺻����', '�⺻����', 55990, 11198, 268752, 44792);
INSERT INTO LG_PAY VALUES('������ �����A', '11GB', '���� 2GB ���� �ӵ� ����', '�������⺻����', '�⺻����', 65890, 13178, 316272, 52712);
INSERT INTO LG_PAY VALUES('������ �����B', '11GB', '���� 2GB ���� �ӵ� ����', '�������⺻����', '�⺻����', 74800, 14960, 359040, 59840);
INSERT INTO LG_PAY VALUES('������ �����C', '20GB', '���� 2GB ���� �ӵ� ����', '�������⺻����', '�⺻����', 88000, 17600, 422400, 70400);
INSERT INTO LG_PAY VALUES('������ �����D', '35GB', '���� 2GB ���� �ӵ� ����', '�������⺻����', '�⺻����', 110000, 22000, 528000, 88000);
INSERT INTO LG_PAY VALUES('LTE ���� 34', '750MB', '', '���� ������ (�׿� 115��)', '�⺻����', 37400, 5940, 142560, 31460);
INSERT INTO LG_PAY VALUES('LTE ���� 42', '1.4GB', '', '���� ������ (�׿� 148��)',  '�⺻����', 46200, 6930, 166320, 39270);
INSERT INTO LG_PAY VALUES('LTE ���� 52', '2.1GB', '', '���� ������ (�׿� 205��)', '�⺻����', 57200, 8470, 203280, 48730);
INSERT INTO LG_PAY VALUES('LTE 34', '750MB', '', '160��', '200��', 37400, 5940, 142560, 31460);
INSERT INTO LG_PAY VALUES('LTE 42', '1.5GB', '', '200��', '200��', 46200, 6930, 166320, 39270);
INSERT INTO LG_PAY VALUES('LTE 52', '2.6GB', '', '250��', '250', 57200, 8470, 203280, 48730);
INSERT INTO LG_PAY VALUES('LTE 62', '6GB', '', '350��', '350��', 68200, 9680, 232320, 58520);
INSERT INTO LG_PAY VALUES('LTE 72', '10GB', '', '500��', '450��', 79200, 11440, 274560, 67760);
INSERT INTO LG_PAY VALUES('LTE 85', '14GB', '', '750��', '650��', 93500, 13860, 332640, 79640);
INSERT INTO LG_PAY VALUES('LTE 100', '20GB', '', '1200��', '1000��', 110000, 16720, 401280, 93280);
INSERT INTO LG_PAY VALUES('LTE 120', '24GB', '', '1500��', '1000��', 132000, 21120, 506880, 110880);


select * from KT_PAY;

-- KT ����� ���̺�
INSERT INTO KT_PAY VALUES('�� ��������99(LTE)', '25GB', '���� 2GB ���� �ӵ� ����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 108900, 21780, 522720, 87120);
INSERT INTO KT_PAY VALUES('�� ��������77(LTE)	', '17GB', '���� 2GB ���� �ӵ� ����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 84700, 16940, 406560, 67760);
INSERT INTO KT_PAY VALUES('�� ��������67(LTE)', '12GB', '���� 2GB ���� �ӵ� ����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 73700, 14740, 353760, 58960);
INSERT INTO KT_PAY VALUES('�� ��������61(LTE)', '10GB', '���� 2GB ���� �ӵ� ����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 67100, 13420, 322080, 53680);
INSERT INTO KT_PAY VALUES('�� ��������51(LTE)', '5GB', '���� 2GB ���� �ӵ� ����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 56100, 11220, 269280, 44880);
INSERT INTO KT_PAY VALUES('�� ��δٿ÷�41(LTE)', '2.5GB', '', 'KT ����ϳ��� ������ + ���� 250��', '�⺻����', 45100, 9020, 216480, 36080);
INSERT INTO KT_PAY VALUES('�� ��δٿ÷�34(LTE)', '1.5GB', '', 'KT ����ϳ��� ������ + ���� 185��', '�⺻����', 37400, 7480, 179520, 29920);
INSERT INTO KT_PAY VALUES('�� ��δٿ÷�28(LTE)', '750MB', '', 'KT ����ϳ��� ������ + ���� 130��', '�⺻����', 30800, 6160, 147840, 24640);
INSERT INTO KT_PAY VALUES('Yƾ 38', '4700MB', '�ִ� 400Kbps �ӵ�����', '���� 10�ð�(45056��)', '200��/��', 38390, 7700, 184800, 30690);
INSERT INTO KT_PAY VALUES('Yƾ 32', '3600MB', '', '���� 10�ð�(45056��)', '200��/��', 32890, 6600, 158400, 26290);
INSERT INTO KT_PAY VALUES('Yƾ 27', '2000MB', '', '���� 10�ð�(45056��)', '200��/��', 27390, 5500, 132000, 21890);
INSERT INTO KT_PAY VALUES('Yƾ 20', '1400MB', '', '���� 10�ð�(45056��)', '200��/��', 20900, 4180, 100320, 16720);
INSERT INTO KT_PAY VALUES('Y24 65.8', '10GB', '��2GB �ִ� 3Mbps�ӵ�����', '�� / �̵���ȭ ������ (���� / �ΰ� 200��)', '�⺻����', 65890, 13200, 316800, 52690);
INSERT INTO KT_PAY VALUES('Y24 54.8', '6GB', '���� 3�ð� ������ ������ (�ӵ�����) / �д�', '�� / �̵���ȭ ������ (���� / �ΰ� 30��)', '�⺻����', 54890, 11000, 264000, 43890);
INSERT INTO KT_PAY VALUES('Y24 49.3', '3GB', '���� 3�ð� ������ ������ (�ӵ�����) / �д�', '�� / �̵���ȭ ������ (���� / �ΰ� 30��)', '�⺻����', 49390, 9900, 237600, 39490);
INSERT INTO KT_PAY VALUES('Y24 43.8', '2GB', '���� 3�ð� ������ ������ (�ӵ�����) / �д�', '�� / �̵���ȭ ������ (���� / �ΰ� 30��)', '�⺻����', 43890, 8800, 211200, 35090);
INSERT INTO KT_PAY VALUES('Y24 38.3', '1GB', '���� 3�ð� ������ ������ (�ӵ�����) / �д�', '�� / �̵���ȭ ������ (���� / �ΰ� 30��)', '�⺻����', 38390, 7700, 184800, 30690);
INSERT INTO KT_PAY VALUES('Y24 32.8', '300MB', '���� 3�ð� ������ ������ (�ӵ�����) / �д�', '�� / �̵���ȭ ������ (���� / �ΰ� 30��)', '�⺻����', 32890, 6600, 158400, 26290);
INSERT INTO KT_PAY VALUES('LTE-��520', '2.5GB', '', '62000��', '�⺻����', 41800, 8360, 200640, 33440);
INSERT INTO KT_PAY VALUES('LTE-��420', '1.5GB', '', '52000��', '20000��', 34100, 6820, 163680, 27280);
INSERT INTO KT_PAY VALUES('LTE-��340', '750MB', '', '34000��', '20000��', 29700, 5940, 142560, 23760);
INSERT INTO KT_PAY VALUES('LTE-��240', '500MB', '', '28000��', '20000��', 25300, 5060, 121440, 20240);
INSERT INTO KT_PAY VALUES('LTE-��190', '300MB', '', '20000��', '20000��', 20900, 4180, 100320, 16720);



		--TEST
		-- T �ñ״�ó ����� 	
		select *
		from skt_pay
		where payment like '%T �ñ״�ó%'
		order by fixed_month desc;
		
		-- T �ñ״�ó ������
		select *
		from skt_pay
		where payment like 'T �ñ״�ó Master';
		
		-- T �ñ״�ó Ŭ����
		select *
		from skt_pay
		where payment like 'T �ñ״�ó Classic';

		-- band YT �����
		select *
		from skt_pay
		where payment like '%band YT%'
		order by fixed_month desc;
		
		-- band YT ����Ʈ
		select *
		from skt_pay
		where payment like '%band YT ����Ʈ%';
		
		-- band YT 7G
		select *
		from skt_pay
		where payment like '%band YT 7G%';
		
		-- band YT 3G
		select *
		from skt_pay
		where payment like '%band YT 3G%';
		
		
		-- band YT 1G
		select *
		from skt_pay
		where payment like '%band YT 1G%';
		
		
		-- band YT ���̺�
		select *
		from skt_pay
		where payment like '%band YT ���̺�%';
		
		select payment
		from (
		select payment, data_option1, data_option2, data_option3, contents_sale, partnership_sale
		from SKT_PAY natural join skt_band_yt
		where payment != 'T���� 35' and contents_sale != '����'
		);
		
		select payment, data_option1, data_option2, data_option3, contents_sale, partnership_sale
		from SKT_PAY natural join skt_band_yt
		where payment not like'T���� 35' and payment like '%band YT%'and contents_sale not like '����';
		
		select payment, data_option1, data_option2, data_option3, contents_sale, partnership_sale
		from SKT_PAY natural join skt_band_yt
		where payment = 'T���� 35' and contents_sale = '����';
		
		
		select *
		from skt_pay
		where payment like '%band ������ ����ƮS%'
		
		
		select *
		from skt_pay
		where payment like '%������ ����%' or payment like '%LTE ������%'
		order by fixed_month desc
		
		select *
		from skt_pay
		where payment like '%LTE ������ ������ 80��%'



	----------------------------------------------------------------------------------
		select *
		from lg_pay
		where payment like '%������%'

		select *
		from lg_pay
		where payment like '%LTE%' and payment not like '%����%'

		select *
		from lg_pay
		where payment like '%������%' and payment not like '%�����%'
		
		--------------------------------------------------------------------------------
		select *
		from kt_pay
		where payment like '%��������%'
		
		select *
		from kt_pay
		where payment like '%Yƾ 38%'
		
		select *
		from skt_pay, kt_pay, lg_pay


