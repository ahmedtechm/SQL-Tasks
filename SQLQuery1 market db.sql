
---------------------------------------------------->>>         <<<----------------------------------------------------
---------------------------------------------------->>>  Task 1 <<<----------------------------------------------------
---------------------------------------------------->>>         <<<----------------------------------------------------
 
CREATE TABLE departments ( 
		DEPARTMENT_ID INT PRIMARY KEY, 
		DEPARTMENT_NAME VARCHAR(50) NOT NULL, 
		MANAGER_ID INT NOT NULL, 
		LOCATION_ID INT NOT NULL ); 


INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID) 

VALUES  (10 , 'Administration'		, 200	, 1700), 
		(20 , 'Marketing'			, 201	, 1800), 
		(30 , 'Purchasing'			, 114	, 1700), 
		(40 , 'Human Resources'		, 203	, 2400), 
		(50 , 'Shipping'			, 121	, 1500), 
		(60 , 'IT'					, 103	, 1400), 
		(70 , 'Public Relations'	, 204	, 2700), 
		(80 , 'Sales'				, 145	, 2500), 
		(90 , 'Executive'			, 100	, 1700), 
		(100, 'Finance'				, 108	, 1700), 
		(110, 'Accounting'			, 205	, 1700), 
		(120, 'Treasury'            , 0		, 1700), 
		(130, 'Corporate Tax'       , 0		, 1700), 
		(140, 'Control And Credit'  , 0		, 1700), 
		(150, 'Shareholder Services', 0		, 1700), 
		(160, 'Benefits'			, 0		, 1700), 
		(170, 'Manufacturing'		, 0		, 1700), 
		(180, 'Construction'		, 0		, 1700), 
		(190, 'Contracting'			, 0		, 1700), 
		(200, 'Operations'			, 0		, 1700), 
		(210, 'IT Support'			, 0		, 1700), 
		(220, 'NOC'					, 0		, 1700), 
		(230, 'IT Helpdesk'			, 0		, 1700), 
		(240, 'Government Sales'	, 0		, 1700), 
		(250, 'Retail Sales'		, 0		, 1700), 
		(260, 'Recruiting'			, 0		, 1700), 
		(270, 'Payroll'				, 0		, 1700); 

select * from departments;
 
 

create table Employee ( 
		EMPLOYEE_ID int PRIMARY KEY, 
		FIRST_NAME varchar(50), 
		LAST_NAME varchar(50), 
		EMAIL varchar(50), 
		PHONE_NUMBER varchar(50), 
		HIRE_DATE Date , 
		JOB_ID int , 
		SALARY float, 
		COMMISSION_PTC float, 
		MANAGER_ID int, 
		DEPARTMENT_ID int);
		
ALTER TABLE Employee
ALTER COLUMN JOB_ID varchar(50);


insert into Employee ( EMPLOYEE_ID , FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PTC, MANAGER_ID, DEPARTMENT_ID )
		


values  (100,'Steven'   ,'King'		,'SKING'    , '515.123.4567'    , '2003-06-17'  ,'AD_PRES'     ,   24000.00 ,           0.00 ,          0 ,            90 ),
		(101,'Neena'    ,'Kochhar'  ,'NKOCHHAR' , '515.123.4568'    , '2005-09-21'  ,'AD_VP'       ,   17000.00 ,           0.00 ,        100 ,            90 ),
		(102,'Lex'		,'De Haan'  ,'LDEHAAN'  , '515.123.4569'    , '2001-01-13'  ,'AD_VP'       ,   17000.00 ,           0.00 ,        100 ,            90 ),
		(103,'Alexand'  ,'Hunold'   ,'AHUNOLD'  , '590.423.4567'    , '2006-01-03'  ,'IT_PROG'     ,    9000.00 ,           0.00 ,        102 ,            60 ),
		(104,'Bruce'    ,'Ernst'    ,'BERNST'   , '590.423.4568'    , '2007-05-21'  ,'IT_PROG'     ,    6000.00 ,           0.00 ,        103 ,            60 ),
		(105,'David'    ,'Austin'   ,'DAUSTIN'  , '590.423.4569'    , '2005-06-25'  ,'IT_PROG'     ,    4800.00 ,           0.00 ,        103 ,            60 ),
		(106,'Valli'    ,'Pataballa','VPATABAL' , '590.423.4560'    , '2006-02-05'  ,'IT_PROG'     ,    4800.00 ,           0.00 ,        103 ,            60 ),
		(107,'Diana'    ,'Lorentz'  ,'DLORENTZ' , '590.423.5567'    , '2007-02-07'  ,'IT_PROG'     ,    4200.00 ,           0.00 ,        103 ,            60 ),
		(108,'Nancy'    ,'Greenberg','NGREENBE' , '515.124.4569'    , '2002-08-17'  ,'FI_MGR'      ,   12008.00 ,           0.00 ,        101 ,           100 ),
		(109,'Daniel'   ,'Faviet'   ,'DFAVIET'  , '515.124.4169'    , '2002-08-16'  ,'FI_ACCOUNT'  ,    9000.00 ,           0.00 ,        108 ,           100 ),
		(110,'John'		,'Chen'		,'JCHEN'    , '515.124.4269'    , '2005-09-28'  ,'FI_ACCOUNT'  ,    8200.00 ,           0.00 ,        108 ,           100 ),
		(111,'Ismael'   ,'Sciarra'  ,'ISCIARRA' , '515.124.4369'    , '2005-09-30'  ,'FI_ACCOUNT'  ,    7700.00 ,           0.00 ,        108 ,           100 ),
		(112,'Jose Ma'  ,'Urman'    ,'JMURMAN'  , '515.124.4469'    , '2006-03-07'  ,'FI_ACCOUNT'  ,    7800.00 ,           0.00 ,        108 ,           100 ),
		(113,'Luis'		,'Popp'		,'LPOPP'    , '515.124.4567'    , '2007-12-07'  ,'FI_ACCOUNT'  ,    6900.00 ,           0.00 ,        108 ,           100 ),
		(114,'Den'		,'Raphaely' ,'DRAPHEAL' , '515.127.4561'    , '2002-12-07'  ,'PU_MAN'      ,   11000.00 ,           0.00 ,        100 ,            30 ),
		(115,'Alexand'  ,'Khoo'		,'AKHOO'    , '515.127.4562'    , '2003-05-18'  ,'PU_CLERK'    ,    3100.00 ,           0.00 ,        114 ,            30 ),
		(116,'Shelli'   ,'Baida'    ,'SBAIDA'   , '515.127.4563'    , '2005-12-24'  ,'PU_CLERK'    ,    2900.00 ,           0.00 ,        114 ,            30 ),
		(117,'Sigal'    ,'Tobias'   ,'STOBIAS'  , '515.127.4564'    , '2005-07-24'  ,'PU_CLERK'    ,    2800.00 ,           0.00 ,        114 ,            30 ),
		(118,'Guy'		,'Himuro'   ,'GHIMURO'  , '515.127.4565'    , '2006-11-15'  ,'PU_CLERK'    ,    2600.00 ,           0.00 ,        114 ,            30 ),
		(119,'Karen'    ,'Colmenares','KCOLMENA', '515.127.4566'    , '2007-08-10'  ,'PU_CLERK'    ,    2500.00 ,           0.00 ,        114 ,            30 ),
		(120,'Matthew'  ,'Weiss'    ,'MWEISS'   , '650.123.1234'    , '2004-07-18'  ,'ST_MAN'      ,    8000.00 ,           0.00 ,        100 ,            50 ),
		(121,'Adam'		,'Fripp'    ,'AFRIPP'   , '650.123.2234'    , '2005-04-10'  ,'ST_MAN'      ,    8200.00 ,           0.00 ,        100 ,            50 ),
		(122,'Payam'    ,'Kaufling' ,'PKAUFLIN' , '650.123.3234'    , '2003-05-01'  ,'ST_MAN'      ,    7900.00 ,           0.00 ,        100 ,            50 ),
		(123,'Shanta'   ,'Vollman'  ,'SVOLLMAN' , '650.123.4234'    , '2005-10-10'  ,'ST_MAN'      ,    6500.00 ,           0.00 ,        100 ,            50 ),
		(124,'Kevin'    ,'Mourgos'  ,'KMOURGOS' , '650.123.5234'    , '2007-11-16'  ,'ST_MAN'      ,    5800.00 ,           0.00 ,        100 ,            50 ),
		(125,'Julia'    ,'Nayer'    ,'JNAYER'   , '650.124.1214'    , '2005-07-16'  ,'ST_CLERK'    ,    3200.00 ,           0.00 ,        120 ,            50 ),
		(126,'Irene'    ,'Mikkilinen','IMIKKILI', '650.124.1224'    , '2006-09-28'  ,'ST_CLERK'    ,    2700.00 ,           0.00 ,        120 ,            50 ),
		(127,'James'    ,'Landry'   ,'JLANDRY'  , '650.124.1334'    , '2007-01-14'  ,'ST_CLERK'    ,    2400.00 ,           0.00 ,        120 ,            50 ),
		(128,'Steven'   ,'Markle'   ,'SMARKLE'  , '650.124.1434'    , '2008-03-08'  ,'ST_CLERK'    ,    2200.00 ,           0.00 ,        120 ,            50 ),
		(129,'Laura'    ,'Bissot'   ,'LBISSOT'  , '650.124.5234'    , '2005-08-20'  ,'ST_CLERK'    ,    3300.00 ,           0.00 ,        121 ,            50 ),
		(130,'Mozhe'    ,'Atkinson' ,'MATKINSO' , '650.124.6234'    , '2005-10-30'  ,'ST_CLERK'    ,    2800.00 ,           0.00 ,        121 ,            50 ),
		(131,'James'    ,'Marlow'   ,'JAMRLOW'  , '650.124.7234'    , '2005-02-16'  ,'ST_CLERK'    ,    2500.00 ,           0.00 ,        121 ,            50 ),
		(132,'TJ'		,'Olson'    ,'TJOLSON'  , '650.124.8234'    , '2007-04-10'  ,'ST_CLERK'    ,    2100.00 ,           0.00 ,        121 ,            50 ),
		(133,'Jason'    ,'Mallin'   ,'JMALLIN'  , '650.127.1934'    , '2004-06-14'  ,'ST_CLERK'    ,    3300.00 ,           0.00 ,        122 ,            50 ),
		(134,'Michael'  ,'Rogers'   ,'MROGERS'  , '650.127.1834'    , '2006-08-26'  ,'ST_CLERK'    ,    2900.00 ,           0.00 ,        122 ,            50 ),
		(135,'Ki'		,'Gee'		,'KGEE'		, '650.127.1734'    , '2007-12-12'  ,'ST_CLERK'    ,    2400.00 ,           0.00 ,        122 ,            50 ),
		(136,'Hazel'    ,'Philtanker','HPHILTAN', '650.127.1634'    , '2008-02-06'  ,'ST_CLERK'    ,    2200.00 ,           0.00 ,        122 ,            50 ),
		(137,'Renske'   ,'Ladwig'   ,'RLADWIG'  , '650.121.1234'    , '2003-07-14'  ,'ST_CLERK'    ,    3600.00 ,           0.00 ,        123 ,            50 ),
		(138,'Stephen'  ,'Stiles'   ,'SSTILES'  , '650.121.2034'    , '2005-10-26'  ,'ST_CLERK'    ,    3200.00 ,           0.00 ,        123 ,            50 ),
		(139,'John'		,'Seo'		,'JSEO'		, '650.121.2019'    , '2006-02-12'  ,'ST_CLERK'    ,    2700.00 ,           0.00 ,        123 ,            50 ),
		(140,'Joshua'   ,'Patel'    ,'JPATEL'   , '650.121.1834'    , '2006-04-06'  ,'ST_CLERK'    ,    2500.00 ,           0.00 ,        123 ,            50 ),
		(141,'Trenna'   ,'Rajs'		,'TRAJS'    , '650.121.8009'    , '2003-10-17'  ,'ST_CLERK'    ,    3500.00 ,           0.00 ,        124 ,            50 ),
		(142,'Curtis'   ,'Davies'   ,'CDAVIES'  , '650.121.2994'    , '2005-01-29'  ,'ST_CLERK'    ,    3100.00 ,           0.00 ,        124 ,            50 ),
		(143,'Randall'  ,'Matos'    ,'RMATOS'   , '650.121.2874'    , '2006-03-15'  ,'ST_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50 ),
		(144,'Peter'    ,'Vargas'   ,'PVARGAS'  , '650.121.2004'    , '2006-07-09'  ,'ST_CLERK'    ,    2500.00 ,           0.00 ,        124 ,            50 ),
		(145,'John'		,'Russell'  ,'JRUSSEL'  , '011.44.1344.429' , '2004-10-01'  ,'SA_MAN'      ,   14000.00 ,           0.40 ,        100 ,            80 ),
		(146,'Karen'    ,'Partners' ,'KPARTNER' , '011.44.1344.467' , '2005-01-05'  ,'SA_MAN'      ,   13500.00 ,           0.30 ,        100 ,            80 ),
		(147,'Alberto'  ,'Errazuriz','AERRAZUR' , '011.44.1344.429' , '2005-03-10'  ,'SA_MAN'	   ,   12000.00 ,           0.30 ,        100 ,            80 ),
		(148,'Gerald'   ,'Cambrault','GCAMBRAU' , '011.44.1344.619' , '2007-10-15'  ,'SA_MAN'      ,   11000.00 ,           0.30 ,        100 ,            80 ),
		(149,'Eleni'    ,'Zlotkey'  ,'EZLOTKEY' , '011.44.1344.429' , '2008-01-29'  ,'SA_MAN'      ,   10500.00 ,           0.20 ,        100 ,            80 ),
		(150,'Peter'    ,'Tucker'   ,'PTUCKER'  , '011.44.1344.129' , '2005-01-30'  ,'SA_REP'      ,   10000.00 ,           0.30 ,        145 ,            80 ),
		(151,'David'    ,'Bernstein','DBERNSTE' , '011.44.1344.345' , '2005-03-24'  ,'SA_REP'      ,    9500.00 ,           0.25 ,        145 ,            80 ),
		(152,'Peter'    ,'Hall'		,'PHALL'    , '011.44.1344.478' , '2005-08-20'  ,'SA_REP'      ,    9000.00 ,           0.25 ,        145 ,            80 ),
		(153,'Christo'  ,'Olsen'    ,'COLSEN'   , '011.44.1344.498' , '2006-03-30'  ,'SA_REP'      ,    8000.00 ,           0.20 ,        145 ,            80 ),
		(154,'Nanette'  ,'Cambrault','NCAMBRAU' , '011.44.1344.987' , '2006-12-09'  ,'SA_REP'	   ,    7500.00 ,           0.20 ,        145 ,            80 ),
		(155,'Oliver'   ,'Tuvault'  ,'OTUVAULT' , '011.44.1344.486' , '2007-11-23'  ,'SA_REP'      ,    7000.00 ,           0.15 ,        145 ,            80 ),
		(156,'Janette'  ,'King'		,'JKING'    , '011.44.1345.429' , '2004-01-30'  ,'SA_REP'      ,   10000.00 ,           0.35 ,        146 ,            80 ),
		(157,'Patrick'  ,'Sully'    ,'PSULLY'   , '011.44.1345.929' , '2004-03-04'  ,'SA_REP'      ,    9500.00 ,           0.35 ,        146 ,            80 ),
		(158,'Allan'    ,'McEwen'   ,'AMCEWEN'  , '011.44.1345.829' , '2004-08-01'  ,'SA_REP'      ,    9000.00 ,           0.35 ,        146 ,            80 ),
		(159,'Lindsey'  ,'Smith'    ,'LSMITH'   , '011.44.1345.729' , '2005-03-10'  ,'SA_REP'      ,    8000.00 ,           0.30 ,        146 ,            80 ),
		(160,'Louise'   ,'Doran'    ,'LDORAN'   , '011.44.1345.629' , '2005-12-15'  ,'SA_REP'      ,    7500.00 ,           0.30 ,        146 ,            80 ),
		(161,'Sarath'   ,'Sewall'   ,'SSEWALL'  , '011.44.1345.529' , '2006-11-03'  ,'SA_REP'      ,    7000.00 ,           0.25 ,        146 ,            80 ),
		(162,'Clara'    ,'Vishney'  ,'CVISHNEY' , '011.44.1346.129' , '2005-11-11'  ,'SA_REP'      ,   10500.00 ,           0.25 ,        147 ,            80 ),
		(163,'Daniell'  ,'Greene'   ,'DGREENE'  , '011.44.1346.229' , '2007-03-19'  ,'SA_REP'      ,    9500.00 ,           0.15 ,        147 ,            80 ),
		(164,'Mattea'   ,'Marvins'  ,'MMARVINS' , '011.44.1346.329' , '2008-01-24'  ,'SA_REP'      ,    7200.00 ,           0.10 ,        147 ,            80 ),
		(165,'David'    ,'Lee'		,'DLEE'		, '011.44.1346.529' , '2008-02-23'  ,'SA_REP'      ,    6800.00 ,           0.10 ,        147 ,            80 ),
		(166,'Sundar'   ,'Ande'		,'SANDE'    , '011.44.1346.629' , '2008-03-24'  ,'SA_REP'      ,    6400.00 ,           0.10 ,        147 ,            80 ),
		(167,'Amit'		,'Banda'    ,'ABANDA'   , '011.44.1346.729' , '2008-04-21'  ,'SA_REP'      ,    6200.00 ,           0.10 ,        147 ,            80 ),
		(168,'Lisa'		,'Ozer'		,'LOZER'    , '011.44.1343.929' , '2005-03-11'  ,'SA_REP'      ,   11500.00 ,           0.25 ,        148 ,            80 ),
		(169,'Harriso'  ,'Bloom'    ,'HBLOOM'   , '011.44.1343.829' , '2006-03-23'  ,'SA_REP'      ,   10000.00 ,           0.20 ,        148 ,            80 ),
		(170,'Tayler'   ,'Fox'		,'TFOX'		, '011.44.1343.729' , '2006-01-24'  ,'SA_REP'      ,    9600.00 ,           0.20 ,        148 ,            80 ),
		(171,'William'  ,'Smith'    ,'WSMITH'   , '011.44.1343.629' , '2007-02-23'  ,'SA_REP'      ,    7400.00 ,           0.15 ,        148 ,            80 ),
		(172,'Elizabe'  ,'Bates'    ,'EBATES'   , '011.44.1343.529' , '2007-03-24'  ,'SA_REP'      ,    7300.00 ,           0.15 ,        148 ,            80 ),
		(173,'Sundita'  ,'Kumar'    ,'SKUMAR'   , '011.44.1343.329' , '2008-04-21'  ,'SA_REP'      ,    6100.00 ,           0.10 ,        148 ,            80 ),
		(174,'Ellen'    ,'Abel'		,'EABEL'    , '011.44.1644.429' , '2004-05-11'  ,'SA_REP'      ,   11000.00 ,           0.30 ,        149 ,            80 ),
		(175,'Alyssa'   ,'Hutton'   ,'AHUTTON'  , '011.44.1644.429' , '2005-03-19'  ,'SA_REP'      ,    8800.00 ,           0.25 ,        149 ,            80 ),
		(176,'Jonatho'  ,'Taylor'   ,'JTAYLOR'  , '011.44.1644.429' , '2006-03-24'  ,'SA_REP'      ,    8600.00 ,           0.20 ,        149 ,            80 ),
		(177,'Jack'		,'Livingston','JLIVINGS', '011.44.1644.429' , '2006-04-23'  ,'SA_REP'      ,    8400.00 ,           0.20 ,        149 ,            80 ),
		(178,'Kimbere'  ,'Grant'    ,'KGRANT'   , '011.44.1644.429' , '2007-05-24'  ,'SA_REP'      ,    7000.00 ,           0.15 ,        149 ,             0 ),
		(179,'Charles'  ,'Johnson'  ,'CJOHNSON' , '011.44.1644.429' , '2008-01-04'  ,'SA_REP'      ,    6200.00 ,           0.10 ,        149 ,            80 ),
		(180,'Winston'  ,'Taylor'   ,'WTAYLOR'  , '650.507.9876'    , '2006-01-24'  ,'SH_CLERK'    ,    3200.00 ,           0.00 ,        120 ,            50 ),
		(181,'Jean'		,'Fleaur'   ,'JFLEAUR'  , '650.507.9877'    , '2006-02-23'  ,'SH_CLERK'    ,    3100.00 ,           0.00 ,        120 ,            50 ),
		(182,'Martha'   ,'Sullivan' ,'MSULLIVA' , '650.507.9878'    , '2007-06-21'  ,'SH_CLERK'    ,    2500.00 ,           0.00 ,        120 ,            50 ),
		(183,'Girard'   ,'Geoni'    ,'GGEONI'   , '650.507.9879'    , '2008-02-03'  ,'SH_CLERK'    ,    2800.00 ,           0.00 ,        120 ,            50 ),
		(184,'Nandita'  ,'Sarchand' ,'NSARCHAN' , '650.509.1876'    , '2004-01-27'  ,'SH_CLERK'    ,    4200.00 ,           0.00 ,        121 ,            50 ),
		(185,'Alexis'   ,'Bull'		,'ABULL'    , '650.509.2876'    , '2005-02-20'  ,'SH_CLERK'    ,    4100.00 ,           0.00 ,        121 ,            50 ),
		(186,'Julia'    ,'Dellinger','JDELLING' , '650.509.3876'    , '2006-06-24'  ,'SH_CLERK'    ,    3400.00 ,           0.00 ,        121 ,            50 ),
		(187,'Anthony'  ,'Cabrio'   ,'ACABRIO'  , '650.509.4876'    , '2007-02-07'  ,'SH_CLERK'    ,    3000.00 ,           0.00 ,        121 ,            50 ),
		(188,'Kelly'    ,'Chung'    ,'KCHUNG'   , '650.505.1876'    , '2005-06-14'  ,'SH_CLERK'    ,    3800.00 ,           0.00 ,        122 ,            50 ),
		(189,'Jennife'  ,'Dilly'    ,'JDILLY'   , '650.505.2876'    , '2005-08-13'  ,'SH_CLERK'    ,    3600.00 ,           0.00 ,        122 ,            50 ),
		(190,'Timothy'  ,'Gates'    ,'TGATES'   , '650.505.3876'    , '2006-07-11'  ,'SH_CLERK'    ,    2900.00 ,           0.00 ,        122 ,            50 ),
		(191,'Randall'  ,'Perkins'  ,'RPERKINS' , '650.505.4876'    , '2007-12-19'  ,'SH_CLERK'    ,    2500.00 ,           0.00 ,        122 ,            50 ),
		(192,'Sarah'    ,'Bell'		,'SBELL'    , '650.501.1876'    , '2004-02-04'  ,'SH_CLERK'    ,    4000.00 ,           0.00 ,        123 ,            50 ),
		(193,'Britney'  ,'Everett'  ,'BEVERETT' , '650.501.2876'    , '2005-03-03'  ,'SH_CLERK'    ,    3900.00 ,           0.00 ,        123 ,            50 ),
		(194,'Samuel'   ,'McCain'   ,'SMCCAIN'  , '650.501.3876'    , '2006-07-01'  ,'SH_CLERK'    ,    3200.00 ,           0.00 ,        123 ,            50 ),
		(195,'Vance'    ,'Jones'    ,'VJONES'   , '650.501.4876'    , '2007-03-17'  ,'SH_CLERK'    ,    2800.00 ,           0.00 ,        123 ,            50 ),
		(196,'Alana'    ,'Walsh'    ,'AWALSH'   , '650.507.9811'    , '2006-04-24'  ,'SH_CLERK'    ,    3100.00 ,           0.00 ,        124 ,            50 ),
		(197,'Kevin'    ,'Feeney'   ,'KFEENEY'  , '650.507.9822'    , '2006-05-23'  ,'SH_CLERK'    ,    3000.00 ,           0.00 ,        124 ,            50 ),
		(198,'Donald'   ,'OConnell' ,'DOCONNEL' , '650.507.9833'    , '2007-06-21'  ,'SH_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50 ),
		(199,'Douglas'  ,'Grant'    ,'DGRANT'   , '650.507.9844'    , '2008-01-13'  ,'SH_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50 ),
		(200,'Jennife'  ,'Whalen'   ,'JWHALEN'  , '515.123.4444'    , '2003-09-17'  ,'AD_ASST'     ,    4400.00 ,           0.00 ,        101 ,            10 ),
		(201,'Michael'  ,'Hartstein','MHARTSTE' , '515.123.5555'    , '2004-02-17'  ,'MK_MAN'	   ,   13000.00 ,           0.00 ,        100 ,            20 ),
		(202,'Pat'		,'Fay'		,'PFAY'		, '603.123.6666'    , '2005-08-17'  ,'MK_REP'      ,    6000.00 ,           0.00 ,        201 ,            20 ),
		(203,'Susan'    ,'Mavris'   ,'SMAVRIS'  , '515.123.7777'    , '2002-06-07'  ,'HR_REP'      ,    6500.00 ,           0.00 ,        101 ,            40 ),
		(204,'Hermann'  ,'Baer'		,'HBAER'    , '515.123.8888'    , '2002-06-07'  ,'PR_REP'      ,   10000.00 ,           0.00 ,        101 ,            70 ),
		(205,'Shelley'  ,'Higgins'  ,'SHIGGINS' , '515.123.8080'    , '2002-06-07'  ,'AC_MGR'      ,   12008.00 ,           0.00 ,        101 ,           110 ),
		(206,'William'  ,'Gietz'    ,'WGIETZ'   , '515.123.8181'    , '2002-06-07'  ,'AC_ACCOUNT'  ,    8300.00 ,           0.00 ,        205 ,           110 );
 
select * from Employee;



CREATE TABLE Locations ( 
		LOCATION_ID INT PRIMARY KEY, 
		STREET_ADDRESS VARCHAR(255), 
		POSTAL_CODE VARCHAR(255), 
		CITY VARCHAR(255), 
		STATE_PROVINCE VARCHAR(255), 
		COUNTRY_ID CHAR(2)); 
  

INSERT INTO Locations (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) 

VALUES  (1000, '1297 Via Cola di Rie'					 , '989'		, 'Roma'			   , ''					, 'IT'), 
		(1100, '93091 Calle della Testa'				 , '10934'		, 'Venice'			   , ''					, 'IT'), 
		(1200, '2017 Shinjuku-ku'						 , '1689'		, 'Tokyo'			   , 'Tokyo Prefecture' , 'JP'), 
		(1300, '9450 Kamiya-cho'						 , '6823'		, 'Hiroshima'		   , ''					, 'JP'), 
		(1400, '2014 Jabberwocky Rd'					 , '26192'		, 'Southlake'		   , 'Texas'			, 'US'), 
		(1500, '2011 Interiors Blvd'					 , '99236'		, 'South San Francisco', 'California'		, 'US'), 
		(1600, '2007 Zagora St'							 , '50090'		, 'South Brunswick'	   , 'New Jersey'		, 'US'), 
		(1700, '2004 Charade Rd'					   	 , '98199'		, 'Seattle'			   , 'Washington'		, 'US'), 
		(1800, '147 Spadina Ave'						 , 'M5V 2L7'	, 'Toronto'			   , 'Ontario'			, 'CA'), 
		(1900, '6092 Boxwood St'						 , 'YSW 9T2'	, 'Whitehorse'		   , 'Yukon'			, 'CA'), 
		(2000, '40-5-12 Laogianggen'					 , '190518'		, 'Beijing'			   , ''					, 'CN'), 
		(2100, '1298 Vileparle (E)'						 , '490231'		, 'Bombay'			   , 'Maharashtra'		, 'IN'), 
		(2200, '12-98 Victoria Street'					 , '2901'		, 'Sydney'			   , 'New South Wales'	, 'AU'), 
		(2300, '198 Clementi North'						 , '540198'		, 'Singapore'		   , ''					, 'SG'), 
		(2400, '8204 Arthur St'							 , ''			, 'London'			   , ''					, 'UK'), 
		(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB'	, 'Oxford'             , 'Oxford'			, 'UK'), 
		(2600, '9702 Chester Road'						 , '9629850 293', 'Stretford'		   , 'Manchester'		, 'UK'), 
		(2700, 'Schwanthalerstr. 7031'					 , '80925'		, 'Munich'			   , 'Bavaria'			, 'DE'), 
		(2800, 'Rua Frei Caneca 1360'					 , '01307-002'	, 'Sao Paulo'		   , 'Sao Paulo'		, 'BR'), 
		(2900, '20 Rue des Corps-Saints'				 , '1730'		, 'Geneva'			   , 'Geneve'			, 'CH'), 
		(3000, 'Murtenstrasse 921'						 , '3095'		, 'Bern'			   , 'BE'				, 'CH'), 
		(3100, 'Pieter Breughelstraat 837'				 , '3029SK'		, 'Utrecht'			   , 'Utrecht'			, 'NL'), 
		(3200, 'Mariano Escobedo 9991'					 , '11932'		, 'Mexico City'		   , 'Distrito Federal,', 'MX'); 
 
 select * from Locations;
 
 

create table Job_grades ( 
		GRADE_LEVEL varchar(50), 
		LOWEST_SAL int, 
		HIGHEST_SAL int);
 

insert into Job_grades ( GRADE_LEVEL, LOWEST_SAL, HIGHEST_SAL)
 

values  ('A', 1000  , 2999  ), 
		('B', 3000  , 5999  ), 
		('C', 6000  , 9999  ), 
		('D', 10000 , 14999 ), 
		('E', 15000 , 24999 ), 
		('F', 25000 , 40000 ); 
 
 select * from  Job_grades ;
 
---------------------------------------------------->>>         <<<----------------------------------------------------
---------------------------------------------------->>>  Task2  <<<----------------------------------------------------
---------------------------------------------------->>>         <<<----------------------------------------------------
 
CREATE TABLE Salesman ( 
    salesman_id INT PRIMARY KEY, 
    name VARCHAR(20) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    commission DECIMAL(4, 2) NOT NULL ); 
  

INSERT INTO Salesman (salesman_id, name, city, commission) 

VALUES  (5001, 'James Hoog', 'New York', 0.15), 
		(5002, 'Nail Knite', 'Paris'   , 0.13), 
		(5005, 'Pit Alex'  , 'London'  , 0.11), 
		(5006, 'Mc Lyon'   , 'Paris'   , 0.14), 
		(5007, 'Paul Adam' , 'Rome'    , 0.13), 
		(5003, 'Lauson Hen', 'San Jose', 0.12); 
 
 select * from Salesman;
 

CREATE TABLE Customer ( 
    customer_id INT PRIMARY KEY, 
    cust_name VARCHAR(20) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    grade INT, 
    salesman_id INT, 
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id)); 


INSERT INTO Customer (customer_id, cust_name, city, grade, salesman_id) 

VALUES	(3002, 'Nick Rimando'  , 'New York'  , 100 , 5001), 
		(3007, 'Brad Davis'	   , 'New York'  , 200 , 5001), 
		(3005, 'Graham Zusi'   , 'California', 200 , 5002), 
		(3008, 'Julian Green'  , 'London'    , 300 , 5002), 
		(3004, 'Fabian Johnson', 'Paris'     , 300 , 5006), 
		(3009, 'Geoff Cameron' , 'Berlin'    , 100 , 5003), 
		(3003, 'Jozy Altidor'  , 'Moscow'    , 200 , 5007), 
		(3001, 'Brad Guzan'	   , 'London'    , NULL, 5005); 

 select * from Customer;
 


CREATE TABLE Orders ( 
		ord_no INT PRIMARY KEY, 
		purch_amt DECIMAL(8, 2) NOT NULL, 
		ord_date DATE NOT NULL, 
		customer_id INT, 
		salesman_id INT, 
		FOREIGN KEY (customer_id) REFERENCES Customer(customer_id), 
		FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id)); 


INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) 

VALUES  (70001, 150.5  , '2012-10-05', 3005, 5002), 
		(70009, 270.65 , '2012-09-10', 3001, 5005), 
		(70002, 65.26  , '2012-10-05', 3002, 5001), 
		(70004, 110.5  , '2012-08-17', 3009, 5003), 
		(70007, 948.5  , '2012-09-10', 3005, 5002), 
		(70005, 2400.6 , '2012-07-27', 3007, 5001), 
		(70008, 5760   , '2012-09-10', 3002, 5001), 
		(70010, 1983.43, '2012-10-10', 3004, 5006), 
		(70003, 2480.4 , '2012-10-10', 3009, 5003), 
		(70012, 250.45 , '2012-06-27', 3008, 5002), 
		(70011, 75.29  , '2012-08-17', 3003, 5007), 
		(70013, 3045.6 , '2012-04-25', 3002, 5001); 
 
 select * from Orders;
 
 
CREATE TABLE Company_mast ( 
		COM_ID INT PRIMARY KEY, 
		COM_NAME VARCHAR(30) NOT NULL ); 
  

INSERT INTO Company_mast (COM_ID, COM_NAME) 

VALUES  (11, 'Samsung'  ), 
		(12, 'iBall'    ), 
		(13, 'Epsion'   ), 
		(14, 'Zebronics'), 
		(15, 'Asus'     ), 
		(16, 'Frontech' ); 
 
 select * from Company_mast;


create table item_mast ( 
		PRO_ID int PRIMARY KEY, 
		PRO_NAME varchar(50), 
		PRO_PRICE float, 
		PRO_COM int); 
  

insert into item_mast ( PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM) 

values  (101,'Mother Board'		 , 3200.00	, 15), 
		(102, 'Key Board'		 , 450.00	, 16), 
		(103, 'ZIP drive'		 , 250.00	, 14), 
		(104, 'Speaker'			 , 550.00	, 16), 
		(105, 'Monitor'			 , 5000.00	, 11), 
		(106, 'DVD drive'		 , 900.00	, 12), 
		(107, 'CD drive'		 , 800.00	, 12), 
		(108, 'Printer'			 , 2600.00	, 13), 
		(109, 'Refill cartridge' , 350.00	, 13), 
		(110, ' Mouse'			 , 250.00	, 12); 

select * from item_mast ;



CREATE TABLE DEPARTMENT ( 
		DPT_CODE INT PRIMARY KEY, 
		DPT_NAME VARCHAR(20) NOT NULL, 
		DPT_ALLOTMENT FLOAT NOT NULL ); 
  

INSERT INTO DEPARTMENT (DPT_CODE, DPT_NAME, DPT_ALLOTMENT) 

VALUES  (57	, 'IT'      , 65000 ), 
		(63	, 'Finance' , 15000 ), 
		(47	, 'HR'      , 240000), 
		(27	, 'RD'      , 55000 ), 
		(89	, 'QC'      , 75000 ); 
 
 select * from DEPARTMENT ;


 CREATE TABLE EMP_DETAILS ( 
		EMP_IDNO INT PRIMARY KEY, 
		EMP_FNAME VARCHAR(50) NOT NULL, 
		EMP_LNAME VARCHAR(50) NOT NULL, 
		EMP_DEPT INT NOT NULL ); 
  

INSERT INTO EMP_DETAILS (EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT) 

VALUES  (127323, 'Michale'	, 'Robbin'	 , 57), 
		(526689, 'Carlos'	, 'Snares'	 , 63), 
		(843795, 'Enric'	, 'Dosio'	 , 57), 
		(328717, 'Jhon'		, 'Snares'	 , 63), 
		(444527, 'Joseph'	, 'Dosni'	 , 47), 
		(659831, 'Zanifer'  , 'Emily'	 , 47), 
		(847674, 'Kuleswar' , 'Sitaraman', 57), 
		(748681, 'Henrey'	, 'Gabriel'	 , 47), 
		(555935, 'Alex'		, 'Manuel'	 , 57), 
		(539569, 'George'	, 'Mardy'	 , 27), 
		(733843, 'Mario'	, 'Saule'	 , 63), 
		(631548, 'Alan'		, 'Snappy'   , 27), 
		(839139, 'Maria'	, 'Foster'   , 57);

select * from EMP_DETAILS;



---------------------------------------------------->>>             <<<----------------------------------------------------
---------------------------------------------------->>>  Questions  <<<----------------------------------------------------
---------------------------------------------------->>>             <<<----------------------------------------------------

  
--> 1) write a SQL query to find the first name, last name, department number, and department name for each employee.

SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM Employee e
inner JOIN departments d 
ON e.department_id = d.department_id;



--> 2) write a SQL query to find the first name, last name, department, city, and state province for each employee.

SELECT e.first_name,  e.last_name,  d.department_name,  l.city,   l.state_province
  FROM employee e
  INNER JOIN departments d
    ON e.department_id = d.department_id
  INNER JOIN locations l
    ON d.location_id = l.location_id;



--> 3) write a SQL query to find the first name, last name, salary, and job grades for all employees. 

SELECT e.first_name, e.last_name, e.salary, jg.grade_level
FROM employee e
JOIN job_grades jg 
ON e.salary BETWEEN jg.lowest_sal AND jg.highest_sal;



--> 4) write a SQL query to find all those employees who work in department ID 80 or 40. Return first name, last name, department number and department name. 

SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employee e
INNER JOIN departments d 
ON e.department_id = d.department_id AND d.department_id IN (80, 40);



--> 5) write a SQL query to find those employees whose first name contains the letter ‘z’. Return first name, last name, department, city, and state province. 

SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province
FROM employee e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE e.first_name LIKE '%z%';



--> 6) write a SQL query to find all departments, including those without employees. Return first name, last name, department ID, department name.   

SELECT e.first_name, e.last_name, d.department_id, d.department_name  
FROM departments d
LEFT JOIN employee e ON e.department_id = d.department_id;



--> 7) write a SQL query to find the employees who earn less than the employee of ID 182. Return first name, last name and salary.   

SELECT first_name, last_name, salary
FROM employee
WHERE salary < (SELECT salary FROM employee WHERE employee_id = 182);



--> 8) write a SQL query to find the employees and their managers. Return the first name of the employee and manager. 

SELECT e.first_name AS employee_first_name, m.first_name AS manager_first_name
FROM employee e, employee m
WHERE e.manager_id = m.employee_id;


--another soultion


SELECT e.first_name AS "employee_name",
       m.first_name AS "manager_name"
  FROM employee e
  INNER JOIN employee m
    ON e.manager_id = m.employee_id;

--> 9) write a SQL query to display the department name, city, and state province for each department. 

SELECT d.department_name, l.city, l.state_province
FROM departments d
INNER JOIN locations l ON d.location_id = l.location_id;



--> 11) write a SQL query to find the employees and their managers. Those managers do not work under any manager also appear in the list. Return the first name of the employee and manager. 

SELECT e.first_name AS employee_name, m.first_name AS manager_name
FROM employee e
LEFT JOIN employee m ON e.manager_id = m.employee_id;



--> 12) write a SQL query to find the employees who work in the same department as the employee with the last name Taylor. Return first name, last name and department ID. 

SELECT e.first_name, e.last_name, e.department_id
FROM employee e
JOIN employee t
ON e.department_id = t.department_id   AND   t.last_name = 'Taylor';



--> 13) write a SQL query to calculate the average salary, the number of employees receiving commissions in that department.
--      Return department name, average salary and number of employees. 
 
 SELECT DEPARTMENT_NAME,AVG(salary) as "Avrage salary",COUNT( FIRST_NAME) as "number of employees" from Employee
inner join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID)
group by DEPARTMENT_NAME
 

 
--> 14) write a SQL query to find the department name and the full name (first and last name) of the employee. 

SELECT d.DEPARTMENT_NAME, CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS FULL_NAME
FROM Employee e
JOIN departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;


--> 15) write a SQL query to find the department name, full name (first and last name) of the employee and their city. 

SELECT d.DEPARTMENT_NAME, CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS FULL_NAME, l.CITY
FROM departments d
JOIN Employee e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
JOIN locations l ON e.DEPARTMENT_ID = l.LOCATION_ID;


--> 16) write a SQL query to find full name (first and last name), and salary of all employees working in any department in the city of London.  

SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary
FROM employee
INNER JOIN departments ON employee.department_id = departments.department_id
INNER JOIN locations ON departments.location_id = locations.location_id
WHERE locations.city = 'London';



--> 17) write a SQL query to find the department name, department ID, and number of employees in each department. 

SELECT d.DEPARTMENT_NAME, d.DEPARTMENT_ID, COUNT(e.EMPLOYEE_ID) AS NUMBER_EMPLOYEES
FROM departments d
LEFT JOIN Employee e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME, d.DEPARTMENT_ID;
  


--> 18) write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city. 

SELECT s.name AS saleman, c.cust_name, s.city 
FROM salesman s 
INNER JOIN customer c ON s.city = c.city



--> 19) write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.  

SELECT o.ord_no, o.purch_amt,c.cust_name,  c.city
  FROM orders o
  INNER JOIN customer c
    ON o.customer_id = c.customer_id
  WHERE o.purch_amt BETWEEN 500 AND 2000;



--> 20) write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.   

SELECT c.cust_name AS "Customer Name", c.city, s.name AS "Salesman", commission
FROM customer c
INNER JOIN salesman s
ON c.salesman_id = s.salesman_id;



--> 21) write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.    

SELECT c.cust_name AS "Customer Name", c.city, s.name AS "Salesman", s.commission
FROM customer c
INNER JOIN salesman s
ON c.salesman_id = s.salesman_id
WHERE s.commission > 0.12;



--> 22) write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company.
--      Return Customer Name, customer city, Salesman, salesman city, commission. 

SELECT c.cust_name AS "Customer Name", c.city AS "Customer City",  s.name AS "Salesman",  s.city AS "Salesman City", s.commission
FROM customer c
INNER JOIN salesman s
ON c.salesman_id = s.salesman_id
WHERE s.commission > 0.12
AND c.city != s.city;



--> 23) write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.   

SELECT  o.ord_no,  o.ord_date,  o.purch_amt,  c.cust_name AS "Customer Name", grade,  s.name AS "Salesman",  s.commission 
FROM orders o
INNER JOIN customer c ON o.customer_id=c.customer_id 
INNER JOIN salesman s ON o.salesman_id=s.salesman_id;



--> 24) Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned.   

SELECT cust_name,(name)SALESPERSON,commission,Customer.city,Orders.*   
from Orders 
inner join Customer on (Orders.customer_id=Customer.customer_id)
inner join Salesman on (Salesman.salesman_id=Customer.salesman_id);



--> 25) write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id.   

SELECT cust_name AS Customer_Name,(Customer.city)Customer_City,Grade,(name)Salesman,(Salesman.city)Salesman_city,Commission
FROM customer 
LEFT JOIN salesman 
ON Customer.salesman_id=salesman.salesman_id
ORDER BY Customer.customer_id ASC;



--> 26) write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.   

SELECT c.cust_name AS "Customer Name",(c.city)Customer_city,c.grade,(s.name)Salesman,(s.city)Salesman_city
FROM customer c
LEFT JOIN salesman s
ON c.salesman_id=s.salesman_id
WHERE c.grade < 300
ORDER BY c.customer_id ASC;



--> 27) Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not.    

 SELECT c.cust_name AS "Customer Name", c.city,  o.ord_no,  o.ord_date, o.purch_amt
FROM customer c
LEFT JOIN orders o
ON c.customer_id=o.customer_id
ORDER BY o.ord_date ASC;

 

--> 28) SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, 
--      and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves.   

SELECT c.cust_name AS "Customer Name",  c.city,  o.ord_no,   o.ord_date,  o.purch_amt AS "Order Amount",  s.name AS "Salesperson",   s.commission
FROM customer c
LEFT OUTER JOIN orders o
ON c.customer_id=o.customer_id
LEFT OUTER JOIN salesman s
ON c.salesman_id=s.salesman_id;



--> 29) Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers. 

SELECT s.name AS "Salesperson"
FROM salesman s
LEFT OUTER JOIN customer c
ON s.salesman_id=c.salesman_id
ORDER BY c.salesman_id ASC;



--> 30) write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount. 

SELECT s.name AS "Salesman", c.cust_name AS Customer_Name,  c.city,  c.grade , o.ord_no, o.ord_date, o.purch_amt
FROM salesman s
LEFT OUTER JOIN customer c
ON s.salesman_id=c.salesman_id
LEFT OUTER JOIN orders o
ON c.customer_id=o.customer_id;



--> 31) Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. 
--      The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.   

SELECT s.name AS "Salesman" , c.cust_name AS Customer_Name,  c.city,  c.grade , o.ord_no, o.ord_date, o.purch_amt
FROM salesman s
LEFT OUTER JOIN customer c
ON s.salesman_id=c.salesman_id
LEFT OUTER JOIN orders o
ON c.customer_id=o.customer_id
  WHERE o.purch_amt >= 2000  AND  grade IS NOT NULL;



--> 32) For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list, 
--      create a report containing the customer name, city, order number, order date, and purchase amount   

SELECT c.cust_name AS "Customer Name",  c.city,  o.ord_no,  o.ord_date,   o.purch_amt
FROM customer c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;



--> 33) Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers on the list who must have a grade 
--      and placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade. 

SELECT c.cust_name AS "Customer Name",  c.city, grade,  o.ord_no,  o.ord_date,  o.purch_amt
  FROM customer c
  FULL OUTER JOIN orders o
    ON c.customer_id= o.customer_id
      where c.grade IS NOT NULL;



--> 34) Write a SQL query to combine each row of the salesman table with each row of the customer table. 

SELECT *
  FROM salesman 
  CROSS JOIN customer ;



--> 35) Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for all customers 
--      and vice versa for that salesperson who belongs to that city. 

SELECT s.name AS "Salesman",   c.cust_name AS "Customer Name", s.city
  FROM salesman s
  CROSS JOIN customer c
  WHERE s.city IS NOT NULL;

----------->>>>
----------->>>>
----------->>>>
----------->>>>

--> 36) Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for every customer 
--      and vice versa for those salesmen who belong to a city and customers who require a grade. 

SELECT *
  FROM salesman s
  CROSS JOIN customer c
  WHERE s.city IS NOT NULL  AND c.grade IS NOT NULL;


----------->>>>
----------->>>>
----------->>>>
----------->>>>

--> 37) Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers 
--      and vice versa for those salesmen who must belong to a city which is not the same as his customer and the customers should have their own grade.   
 
SELECT s.name AS "Salesman",  c.cust_name AS "Customer Name"
  FROM salesman s
  CROSS JOIN customer c
  WHERE s.city IS NOT NULL
    AND s.city != c.city
    AND c.grade IS NOT NULL;

----------->>>>
----------->>>>
----------->>>>
----------->>>>
 
--> 38) write a SQL query to select all rows from both participating tables as long as there is a match between pro_com and com_id. 

SELECT *
FROM item_mast i
INNER JOIN company_mast c
ON  i.pro_com  =  c.com_id;



--> 39) Write a SQL query to display the item name, price, and company name of all the products.   

SELECT i.pro_name,  i.pro_price,   c.com_name
FROM item_mast i
INNER JOIN company_mast c
ON i.pro_com  =  c.com_id;



--> 40) write a SQL query to calculate the average price of items of each company. Return average value and company name.   

SELECT c.com_name AS Company_Name,  AVG(i.pro_price) AS Avaerage_value
  FROM item_mast i
  INNER JOIN company_mast c
    ON i.pro_com=c.com_id
  GROUP BY c.com_name;



--> 41) write a SQL query to calculate and find the average price of items of each company higher than or equal to Rs. 350. Return average value and company name. 

SELECT AVG(i.pro_price) AS Average_value,  c.com_name AS CompanyName
  FROM item_mast i
  INNER JOIN company_mast c
    ON i.pro_com  =  c.com_id
	where i.pro_price >= 350
  GROUP BY c.com_name;
  
 

--> 42) write a SQL query to find the most expensive product of each company. Return pro_name, pro_price and com_name. 

SELECT c.com_name,  i.pro_name,  i.pro_price
  FROM item_mast i
  INNER JOIN company_mast c
    ON i.pro_com  =  c.com_id
      AND i.pro_price = (SELECT MAX(i.pro_price)
                           FROM item_mast i
                           WHERE i.pro_com  =  c.com_id)
						   order by  PRO_PRICE ASC ;

--> 43) write a SQL query to display all the data of employees including their department.   

SELECT *
  FROM emp_details edet
  INNER JOIN department edep
    ON edet.emp_dept = edep.dpt_code;



--> 44) write a SQL query to display the first and last names of each employee, as well as the department name and sanction amount.    

SELECT edet.emp_fname AS "First Name",
       edet.emp_lname AS "Last Name",
       edep.dpt_name AS "Department Name",
       edep.dpt_allotment AS "Amount Allotted"
  FROM emp_details edet
  INNER JOIN department edep
    ON edet.emp_dept = edep.dpt_code;



--> 45) write a SQL query to find the departments with budgets more than Rs. 50000 and display the first name and last name of employees.   

SELECT edet.emp_fname AS "First Name",
       edet.emp_lname AS "Last Name"
  FROM emp_details edet
  INNER JOIN department edep
    ON edet.emp_dept  =  edep.dpt_code   AND   edep.dpt_allotment  >  50000;


--> 46) write a SQL query to find the names of departments where more than two employees are employed. Return dpt_name.   

SELECT edep.dpt_name AS Department_Name
  FROM emp_details edet
  INNER JOIN department edep
    ON edet.emp_dept = edep.dpt_code
  GROUP BY edep.dpt_name
  HAVING COUNT(edet.emp_idno) > 2;



--> 47) write a SQL query to find the names of departments where the department name has two letters. Return dpt_name.   


--> 48) write a SQL query to find the names of customers where the customer name eds with ‘n’. Return cust_name.   


--> 49) write a SQL query to find the names of departments, cutomer id and order id.   


--> 50) write a SQL query to find cutomer name and order id where the order was purchased on October. 
 
