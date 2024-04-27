create database mlb;

use mlb;

create table 팀(
	팀이름 char(40) not null,
	창단연도 int,
	연고지 char(30),
	홈구장 char(40),
	팀순위 char(20),
	승률 float,
	primary key(팀이름)
);

insert into 팀 values('뉴욕 양키스',1903,'뉴욕','양키 스타디움','1위',0.603)
insert into 팀 values('로스앤젤레스 에인절스',1961,'애너하임','에인절 스타디움 오브 애너하임','2위',0.594)
insert into 팀 values('토론토 블루제이스',1977,'토론토','로저스 센터','3위',0.586)
insert into 팀 values('샌디에이고 파드리스',1969,'샌디에이고','펫코 파크','4위',0.562)
insert into 팀 values('로스앤젤레스 다저스',1884,'로스앤젤레스','다저 스타디움','5위',0.548)
insert into 팀 values('마이애미 말린스',1993,'마이애미','론디포 파크','6위',0.538)
insert into 팀 values('탬파베이 레이스',1998,'세인트피터즈버그','트로피카나 필드','7위',0.527)
insert into 팀 values('휴스턴 애스트로스',1962,'휴스턴','미닛 메이드 파크','8위',0.513)
insert into 팀 values('텍사스 레인저스',1961,'알링턴','글로브 라이프 필드','9위',0.507)
insert into 팀 values('클리블랜드 가디언스',1894,'클리블랜드','프로그레시브 필드','10위',0.495)

select *
from 팀

create table 선수(
	선수번호 char(20) not null,
	선수이름 char(40),
	등번호 int,
	연봉 char(40),
	투타 char(20),
	나이 int,
	신장 int,
	몸무게 int,
	국적 char(40),
	팀이름 char(40),
	입단연도 int,
	primary key(선수번호),
	foreign key(팀이름) references 팀(팀이름)
);

insert into 선수 values ('P001','오타니 쇼헤이',17,'$70000000','투,타',29,193,102,'일본','로스앤젤레스 다저스',2024)
insert into 선수 values ('P002','페르난도 타티스 주니어',23,'$11000000','타',24,191,98,'도미니카 공화국','샌디에이고 파드리스',2019)
insert into 선수 values ('P003','마이크 트라웃',27,'$35450000','타',27,187,106,'미국','로스앤젤레스 에인절스',2011)
insert into 선수 values ('P004','맥스 슈어저',31,'$43333333','투',39,190,94,'미국','텍사스 레인저스',2023)
insert into 선수 values ('P005','샌디 알칸타라',22,'$56000000','투',28,196,90,'도미니카 공화국','마이애미 말린스',2018)
insert into 선수 values ('P006','호세 알투베',27,'$26000000','타',27,163,74,'베네수엘라','휴스턴 애스트로스',2011)
insert into 선수 values ('P007','아롤디스 채프먼',45,'$3750000','투',35,193,98,'쿠바','텍사스 레인저스',2023)
insert into 선수 values ('P008','게릿 콜',45,'$36000000','투',33,193,108,'미국','뉴욕 양키스',2020)
insert into 선수 values ('P009','빅터 곤잘레스',81,'$720000','투',28,183,82,'멕시코','뉴욕 양키스',2024)
insert into 선수 values ('P010','카를로스 로돈',55,'$22000000','투',31,191,112,'미국','뉴욕 양키스',2023)
insert into 선수 values ('P011','루이스 힐',81,'$723400','투',25,188,84,'도미니카 공화국','뉴욕 양키스',2021)
insert into 선수 values ('P012','애런 저지',99,'$40000000','타',31,201,127,'미국','뉴욕 양키스',2016)
insert into 선수 values ('P013','오스왈도 카브레라',95,'$742750','타',24,178,89,'베네수엘라','뉴욕 양키스',2022)
insert into 선수 values ('P014','제이슨 도밍게스',89,'$720000','타',20,175,86,'도미니카 공화국','뉴욕 양키스',2023)
insert into 선수 values ('P015','에스테반 플로리얼',90,'$700000','타',26,186,88,'도미니카 공화국','뉴욕 양키스',2020)
insert into 선수 values ('P016','타일러 앤더슨',31,'$13000000','투',33,188,99,'미국','로스앤젤레스 에인절스',2023)
insert into 선수 values ('P017','리드 데트머스',48,'$740000','투',24,188,95,'미국','로스앤젤레스 에인절스',2021)
insert into 선수 values ('P018','그리핀 캐닝',47,'$850000','투',27,188,81,'미국','로스앤젤레스 에인절스',2019)
insert into 선수 values ('P019','오스틴 워렌',61,'$720000','투',27,183,77,'미국','로스앤젤레스 에인절스',2021)
insert into 선수 values ('P020','브랜든 드루리',23,'$8500000','타',31,188,104,'미국','로스앤젤레스 에인절스',2023)
insert into 선수 values ('P021','미키 모니악',16,'$720000','타',25,188,88,'미국','로스앤젤레스 에인절스',2022)
insert into 선수 values ('P022','테일러 워드',3,'$2750000','타',29,185,90,'미국','로스앤젤레스 에인절스',2018)
insert into 선수 values ('P023','워커 뷸러',21,'$8025000','투',29,188,83,'미국','로스앤젤레스 다저스',2017)
insert into 선수 values ('P024','토니 곤솔린',26,'$3250000','투',29,190,92,'미국','로스앤젤레스 다저스',2019)
insert into 선수 values ('P025','알렉스 베시아',51,'$750000','투',27,185,94,'미국','로스앤젤레스 다저스',2021)
insert into 선수 values ('P026','제임스 아웃맨',33,'$722500','타',26,190,97,'미국','로스앤젤레스 다저스',2022)
insert into 선수 values ('P027','마이클 부시',83,'$720000','타',26,185,95,'미국','로스앤젤레스 다저스',2023)
insert into 선수 values ('P028','개빈 럭스',9,'$750000','타',26,188,86,'미국','로스앤젤레스 다저스',2019)
insert into 선수 values ('P029','저스틴 벌랜더',35,'$43333333','투',40,196,106,'미국','휴스턴 애스트로스',2023)
insert into 선수 values ('P030','라이언 프레슬리',55,'$14000000','투',34,188,93,'미국','휴스턴 애스트로스',2018)
insert into 선수 values ('P031','숀 더빈',66,'$720000','투',28,185,77,'미국','휴스턴 애스트로스',2023)
insert into 선수 values ('P032','데이비드 헨슬리',17,'$722600','타',27,198,86,'미국','휴스턴 애스트로스',2022)
insert into 선수 values ('P033','채스 맥코믹',20,'$752500','타',28,183,94,'미국','휴스턴 애스트로스',2021)
insert into 선수 values ('P034','오웬 화이트',43,'$720000','투',24,190,90,'미국','텍사스 레인저스',2023)
insert into 선수 values ('P035','제이콥 디그롬',48,'$30000000','투',35,193,82,'미국','텍사스 레인저스',2023)
insert into 선수 values ('P036','코리 시거',5,'$34500000','타',29,193,97,'미국','텍사스 레인저스',2022)
insert into 선수 values ('P037','조나단 오넬라스',36,'$720000','타',23,183,88,'미국','텍사스 레인저스',2023)
insert into 선수 values ('P038','레오디 타베라스',3,'$733445','타',25,188,88,'미국','텍사스 레인저스',2020)
insert into 선수 values ('P039','트리스턴 맥켄지',24,'$739500','투',24,196,74,'미국','클리블랜드 가디언스',2020)
insert into 선수 values ('P040','트레버 스테판',37,'$1600000','투',28,196,102,'미국','클리블랜드 가디언스',2021)
insert into 선수 values ('P041','재비언 커리',44,'$720100','투',25,183,88,'미국','클리블랜드 가디언스',2022)
insert into 선수 values ('P042','타일러 프리먼',2,'$720000','타',24,183,86,'미국','클리블랜드 가디언스',2022)
insert into 선수 values ('P043','존켄시 노엘',78,'$720000','타',22,190,113,'미국','클리블랜드 가디언스',2022)
insert into 선수 values ('P044','스티븐 콴',38,'$727300','타',26,175,79,'미국','클리블랜드 가디언스',2022)
insert into 선수 values ('P045','기쿠치 유세이',16,'$10000000','투',32,183,95,'일본','토론토 블루제이스',2022)
insert into 선수 values ('P046','팀 메이자',58,'$2100000','투',31,190,99,'미국','토론토 블루제이스',2017)
insert into 선수 values ('P046','류현진',99,'$23000000','투',36,191,113,'대한민국','토론토 블루제이스',2020)
insert into 선수 values ('P047','오렐비스 마르티네스',26,'$720000','타',22,185,90,'도미니카 공화국','토론토 블루제이스',2023)
insert into 선수 values ('P048','블라디미르 게레로 주니어',27,'$14500000','타',24,188,1085,'도미니카 공화국','토론토 블루제이스',2019)
insert into 선수 values ('P049','다르빗슈 유',11,'$15000000','투',37,196,100,'일본','샌디에이고 파드리스',2021)
insert into 선수 values ('P050','로베르트 수아레스',75,'$10000000','투',75,188,95,'베네수엘라','샌디에이고 파드리스',2022)
insert into 선수 values ('P051','김하성',7,'$7000000','타',28,179,85,'대한민국','샌디에이고 파드리스',2021)
insert into 선수 values ('P052','매니 마차도',13,'$13000000','타',31,191,98,'도미니카 공화국','샌디에이고 파드리스',2019)
insert into 선수 values ('P053','셰인 맥클래너핸',18,'$737000','투',26,185,90,'미국','탬파베이 레이스',2020)
insert into 선수 values ('P054','잭 에플린',24,'$11000000','투',29,198,99,'미국','탬파베이 레이스',2023)
insert into 선수 values ('P055','랜디 아로사레나',56,'$4150000','타',28,180,89,'멕시코','탬파베이 레이스',2020)
insert into 선수 values ('P056','루크 레일리',55,'$722300','타',29,193,106,'미국','탬파베이 레이스',2022)
insert into 선수 values ('P057','에드워드 카브레라',27,'$731000','투',25,196,96,'도미니카 공화국','마이애미 말린스',2021)
insert into 선수 values ('P058','브라이언 호잉',78,'$720000','투',27,198,95,'미국','마이애미 말린스',2020)
insert into 선수 values ('P059','존 버티',5,'$3625000','타',33,178,86,'미국','마이애미 말린스',2019)
insert into 선수 values ('P060','조던 그로션스',10,'$700000','타',24,190,92,'미국','마이애미 말린스',2022)
insert into 선수 values ('P061','아비사일 가르시아',24,'$12000000','타',32,193,113,'베네수엘라','마이애미 말린스',2022)
insert into 선수 values ('P062','제프리 스프링스',78,'$5250000','투',31,190,98,'미국','탬파베이 레이스',2021)
insert into 선수 values ('P063','커티스 미드',25,'$720000','타',23,188,77,'호주','탬파베이 레이스',2023)

select *
from 선수

create table 감독(
	감독번호 char(30) not null,
	이름 char(40),
	팀이름 char(40),
	입단연도 int,
	primary key (감독번호),
	foreign key(팀이름) references 팀(팀이름)
);

insert into 감독 values ('G001','애런 분','뉴욕 양키스',2018)
insert into 감독 values ('G002','론 워싱턴','로스앤젤레스 에인절스',2024)
insert into 감독 values ('G003','존 슈나이더','토론토 블루제이스',2023)
insert into 감독 values ('G004','마이크 쉴트','샌디에이고 파드리스',2024)
insert into 감독 values ('G005','데이비드 로버츠','로스앤젤레스 다저스',2016)
insert into 감독 values ('G006','스킵 슈마거','마이애미 말린스',2023)
insert into 감독 values ('G007','케빈 캐시','탬파베이 레이스',2015)
insert into 감독 values ('G008','조 에스파다','휴스턴 애스트로스',2024)
insert into 감독 values ('G009','브루스 보치','텍사스 레인저스',2023)
insert into 감독 values ('G010','스티븐 보트','클리블랜드 가디언스',2024)

select *
from 감독

create table 재밌는기록(
	이도류 char(40),
	한이닝만루홈런2개 char(40),
	최고구속 char(40),
	최대홈런 char(40),
	한이닝최소투구3탈삼진 char(40)
);

insert into 재밌는기록 values ('오타니 쇼헤이','페르난도 타티스 주니어','아롤디스 채프먼','애런 저지','게릿 콜')

select *
from 재밌는기록

create table 전문가평가(
	ID char(30) not null,
	이름 char(30),
	선수번호 char(20) not null,
	평가 varchar(100),
	primary key(ID),
	foreign key(선수번호) references 선수(선수번호)
);

insert into 전문가평가 values ('as123','슈미스 던','P040','아직은 미완성이지만 성장 가능성이 있는 선수')
insert into 전문가평가 values ('kim123','김재원','P005','한 세기에 한번 나올까 말까한 투수')
insert into 전문가평가 values ('qwe83','애런 매슈','P051','그의 수비는 팀을 승리로 이끌 수 있다')
insert into 전문가평가 values ('loa123','제임스 로아','P061','모든 능력이 출중한 육각형 선수')
insert into 전문가평가 values ('ko777','고석훈','P046','제구력은 메이저리그에서도 상위급인 선수이다')
insert into 전문가평가 values ('pag008','존 몰리아나','P016','가끔 불안한적도 있지만 불펜으로서 꾸준히 이닝을 먹어주는 선수')

select *
from 전문가평가

create table 경기(
	경기번호 char(20) not null,
	날짜 char(20),
	홈팀 char(40),
	원정팀 char(40),
	승리팀 char(40),
	primary key(경기번호),
	foreign key(홈팀) references 팀(팀이름),
	foreign key(원정팀) references 팀(팀이름),
	foreign key(승리팀) references 팀(팀이름)
);

insert into 경기 values ('G001','2023.04.12','뉴욕 양키스','클리블랜드 가디언스','클리블랜드 가디언스')
insert into 경기 values ('G002','2023.04.14','로스앤젤레스 에인절스','토론토 블루제이스','로스앤젤레스 에인절스')
insert into 경기 values ('G003','2023.04.16','샌디에이고 파드리스','로스앤젤레스 다저스','샌디에이고 파드리스')
insert into 경기 values ('G004','2023.04.18','마이애미 말린스','탬파베이 레이스','탬파베이 레이스')
insert into 경기 values ('G005','2023.04.20','휴스턴 애스트로스','텍사스 레인저스','휴스턴 애스트로스')
insert into 경기 values ('G006','2023.04.26','뉴욕 양키스','샌디에이고 파드리스','뉴욕 양키스')
insert into 경기 values ('G007','2023.05.03','마이애미 말린스','로스앤젤레스 에인절스','로스앤젤레스 에인절스')
insert into 경기 values ('G008','2023.05.07','토론토 블루제이스','클리블랜드 가디언스','토론토 블루제이스')
insert into 경기 values ('G009','2023.05.18','로스앤젤레스 다저스','뉴욕 양키스','뉴욕 양키스')
insert into 경기 values ('G010','2023.06.12','텍사스 레인저스','샌디에이고 파드리스','텍사스 레인저스')
insert into 경기 values ('G011','2023.06.20','로스앤젤레스 에인절스','휴스턴 애스트로스','로스앤젤레스 에인절스')

select *
from 경기

create table 선수기록(
	기록번호 char(20) not null,
	포지션 char(20),
	방어율 float,
	타율 float,
	선수번호 char(20),
	primary key(기록번호),
	foreign key(선수번호) references 선수(선수번호)	
);

insert into 선수기록 values ('R001','선발투수,지명타자',2.36,0.302,'P001')
insert into 선수기록 values ('R002','좌익수',null,0.288,'P002')
insert into 선수기록 values ('R003','중견수',null,0.313,'P003')
insert into 선수기록 values ('R004','선발투수',1.56,null,'P004')
insert into 선수기록 values ('R005','선발투수',1.12,null,'P005')
insert into 선수기록 values ('R006','2루수',null,0.321,'P006')
insert into 선수기록 values ('R007','마무리투수',0.84,null,'P007')
insert into 선수기록 values ('R008','선발투수',3.11,null,'P008')
insert into 선수기록 values ('R009','선발투수',0.93,null,'P009')
insert into 선수기록 values ('R010','중계투수',3.98,null,'P010')
insert into 선수기록 values ('R011','중계투수',4.98,null,'P011')
insert into 선수기록 values ('R012','중견수',null,0.265,'P012')
insert into 선수기록 values ('R013','1루수',null,0.278,'P013')
insert into 선수기록 values ('R014','3루수',null,0.294,'P014')
insert into 선수기록 values ('R015','지명타자',null,0.313,'P015')
insert into 선수기록 values ('R016','중계투수',2.74,null,'P016')
insert into 선수기록 values ('R017','선발투수',2.81,null,'P017')
insert into 선수기록 values ('R018','마무리투수',1.89,null,'P018')
insert into 선수기록 values ('R019','선발투수',4.72,null,'P019')
insert into 선수기록 values ('R020','우익수',null,0.231,'P020')
insert into 선수기록 values ('R021','유격수',null,0.198,'P021')
insert into 선수기록 values ('R022','포수',null,0.325,'P022')
insert into 선수기록 values ('R023','선발투수',1.91,null,'P023')
insert into 선수기록 values ('R024','선발투수',2.64,null,'P024')
insert into 선수기록 values ('R025','중계투수',2.29,null,'P025')
insert into 선수기록 values ('R026','좌익수',null,0.322,'P026')
insert into 선수기록 values ('R027','1루스',null,0.298,'P027')
insert into 선수기록 values ('R028','3루수',null,0.245,'P028')
insert into 선수기록 values ('R029','선발투수',0.89,null,'P029')
insert into 선수기록 values ('R030','중계투수',5.83,null,'P030')
insert into 선수기록 values ('R031','마무리투수',0.99,null,'P031')
insert into 선수기록 values ('R032','포수',null,0.352,'P032')
insert into 선수기록 values ('R033','지명타자',null,0.288,'P033')
insert into 선수기록 values ('R034','선발투수',3.87,null,'P034')
insert into 선수기록 values ('R035','선발투수',1.94,null,'P035')
insert into 선수기록 values ('R036','좌익수',null,0.246,'P036')
insert into 선수기록 values ('R037','우익수',null,0.311,'P037')
insert into 선수기록 values ('R038','1루수',null,0.315,'P038')
insert into 선수기록 values ('R039','마무리투수',2.74,null,'P039')
insert into 선수기록 values ('R040','선발투수',2.39,null,'P040')
insert into 선수기록 values ('R041','중계투수',3.75,null,'P041')
insert into 선수기록 values ('R042','1루수',null,0.298,'P042')
insert into 선수기록 values ('R043','2루수',null,0.236,'P043')
insert into 선수기록 values ('R044','유격수',null,0.246,'P044')
insert into 선수기록 values ('R045','선발투수',4.28,null,'P045')
insert into 선수기록 values ('R046','선발투수',2.32,null,'P046')
insert into 선수기록 values ('R047','중견수',null,0.312,'P047')
insert into 선수기록 values ('R048','1루수',null,0.246,'P048')
insert into 선수기록 values ('R049','선발투수',1.36,null,'P049')
insert into 선수기록 values ('R050','중계투수',4.38,null,'P050')
insert into 선수기록 values ('R051','2루수',null,0.303,'P051')
insert into 선수기록 values ('R052','3루수',null,0.316,'P052')
insert into 선수기록 values ('R053','선발투수',3.83,null,'P053')
insert into 선수기록 values ('R054','마무리투수',1.36,null,'P054')
insert into 선수기록 values ('R055','중견수',null,0.302,'P055')
insert into 선수기록 values ('R056','지명타자',null,0.263,'P056')
insert into 선수기록 values ('R057','선발투수',4.73,null,'P057')
insert into 선수기록 values ('R058','마무리투수',0.96,null,'P058')
insert into 선수기록 values ('R059','포수',null,0.253,'P059')
insert into 선수기록 values ('R060','2루수',null,0.236,'P060')
insert into 선수기록 values ('R061','유격수',null,0.300,'P061')
insert into 선수기록 values ('R062','중계투수',3.48,null,'P062')
insert into 선수기록 values ('R063','3루수',null,0.287,'P063')


select *
from 선수기록

--01 선수 김하성의 국적은?
select 국적
from 선수
where 선수이름='김하성'

--02 1884년에 창단한 팀의 이름은?
select 팀이름
from 팀
where 창단연도=1884

--03 로스앤젤레스 에인절스에 속한 선수들의 이름과 연봉은?
select 선수이름,연봉
from 선수
where 팀이름='로스앤젤레스 에인절스'

--04 24세 이하인 선수의 이름은?
select 선수이름
from 선수
where 나이<=24

--05 타일러 프리먼 선수의 타율은?
select 타율
from 선수,선수기록
where 선수.선수번호=선수기록.선수번호 and 선수이름='타일러 프리먼'

--06 트레버 스테판 선수의 전문가 평가는?
select 평가
from 전문가평가,선수
where 전문가평가.선수번호=선수.선수번호 and 선수이름='트레버 스테판'


--07 승률이 5할 이상인 팀 이름은?
select 팀이름
from 팀
where 승률>=0.500


--08 마이크 트라웃의 몸무게는?
select 몸무게
from 선수
where 선수이름='마이크 트라웃'


--09 클리블랜드 가디언스 소속이면서 투수인 선수의 이름은?
select 선수이름
from 선수
where 팀이름='클리블랜드 가디언스' and 투타='투'


--10 나이의 오름차순으로 하여라
select *
from 선수 order by 나이 asc


--11 국적이 도미니카 공화국이면서 타자인 선수의 이름과 나이는?
select 선수이름,나이
from 선수
where 국적='도미니카 공화국' and 투타='타'


--12 감독 스티븐 보트의 입단연도는?
select 입단연도
from 감독
where 이름='스티븐 보트'


--13 팀 뉴욕 양키스의 승률은?
select 승률
from 팀
where 팀이름='뉴욕 양키스'


--14 로스앤젤레스 다저스에 속한 선수들의 이름을 내림차순으로 검색하면?
select *
from 선수
where 팀이름='로스앤젤레스 다저스' order by 선수이름 desc


--15 이름에 '오'가 들어간 선수는?
select *
from 선수
where 선수이름 like '오%'


--16 최고구속을 기록한 선수의 이름과 방어율은?
select 최고구속
from 재밌는기록



--17 2023.04.26 경기의 승리팀은?
select 승리팀
from 경기
where 날짜='2023.04.26'

--18 팀 휴스턴 애스트로스 소속이고 신장이 163인 선수의 이름과 타율은?
select 선수이름,타율
from 선수,선수기록
where 선수.선수번호=선수기록.선수번호 and 팀이름='휴스턴 애스트로스' and 신장=163


--19 평균신장보다 키가 큰 선수의 이름은?
select 선수이름
from 선수
where 신장>= (select avg(신장)
			  from 선수)

--20 샌디에이고 파드리스 또는 탬파베이 레이스에 소속되어 있는 감독의 이름과 입단연도는?
select 이름,입단연도
from 감독
where 팀이름='샌디에이고 파드리스' or 팀이름='탬파베이 레이스'
