강남역
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'정돈','서울시 강남구 역삼동 811-4', '일본가정식', './img_foodshop/jungdon1.jpg',
		'강남역', 10, 'SUN', '11:30 - 22:00', '02-563-0924', '127.026931', '37.5036114');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'모범 갈빗살','서울시 서초구 서초동 1308-25', '한식', './img_foodshop/mobum1.jpg',
		'강남역', 10, 'null', '11:30 - 22:30', '02-533-2588', '127.024544', '37.5009088');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'어메이징 타이','서울시 서초구 서초동 1309-1', '태국음식', './img_foodshop/amazing1.jpg',
		'강남역', 10, 'SUN', '11:30 - 21:30', '02-594-7377', '127.024046', '37.5019992');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'모랑 해물솥밥','서울시 강남구 역삼동 827-24', '해산물 요리', './img_foodshop/morang1.jpg',
		'강남역', 10, 'SUN', '11:30 - 21:30', '02-594-7377', '127.024046', '37.5019992');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'뉴욕 비앤비','서울시 강남구 역삼동 827-37', '패스트 푸드', './img_foodshop/newyork1.jpg',
		'강남역', 10, 'SUN', '11:30 - 21:30', '02-594-7377', '127.024046', '37.5019992');
		
가로수길		
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'미라이','서울시 강남구 신사동 557-25', '일식', './img_foodshop/mirai1.jpg',
		'가로수길', 20, 'SUN', '18:00 - 02:00', '02-540-0934', '127.026156', '37.5210729');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'길버트버거앤프라이즈','서울시 강남구 신사동 545-3', '햄버거', './img_foodshop/gilbert1.jpg',
		'가로수길', 30, 'null', '11:30 - 22:00', '02-546-5453', '127.023181', '37.5212447');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'쮸즈','서울시 강남구 신사동 540-4', '중식', './img_foodshop/zhuze1.jpg',
		'가로수길', 10, 'SUN', '17:00 - 21:00', '02-6081-9888', '127.024583', '37.5194874');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'지아니스나폴리','서울시 강남구 신사동 541-6', '양식', './img_foodshop/zianis1.jpg',
		'가로수길', 10, 'SUN', '11:30 - 22:30', '02-3416-0316', '127.023735', '37.5191813');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'목포집','서울시 강남구 신사동 514-3', '한식', './img_foodshop/mokpozip1.jpg',
		'가로수길', 10, 'MON', '11:30 - 24:00', '02-549-5199', '127.021393', '37.5174698');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'애뚜왈','서울시 강남구 신사동 534-8', '베이커리', './img_foodshop/attuwal1.jpg',
		'가로수길', 30, 'null', '12:30 - 21:00', '070-7627-0057', '127.022197', '37.5212989');
		
		
동작/사당		
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'렁트멍','서울시 동작구 상도동 416', '베이커리', './img_foodshop/lungtmung1.jpg',
		'동작/사당', 20, 'SUN', '11:00 - 20:00', '02-825-0404', '126.943390', '37.5006446');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'김씨마구로','서울시 동작구 노량진동 13-6', '일식', './img_foodshop/gimscima1.jpg',
		'동작/사당', 10, 'null', '11:00 - 23:00', '02-2254-8412', '126.937961', '37.5148055');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'릿잇타미','서울시 서초구 방배동 451-31', '햄버거', './img_foodshop/letittommy1.jpg',
		'동작/사당', 50, 'SUN', '11:30 - 22:00', '02-525-1976', '126.983757', '37.4783667');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'농부쌈밥','서울시 동작구 사당동 1007-6', '한식', './img_foodshop/nongbu1.jpg',
		'동작/사당', 10, 'SUN', '11:00 - 21:30', '02-521-8005', '126.981076', '37.4840156');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'스톤504','서울시 동작구 상도동 504', '양식', './img_foodshop/stone1.jpg',
		'동작/사당', 10, 'null', '11:00 - 24:00', '02-6401-5054', '126.957530', '37.4946230');
		

방배/반포/잠원		
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'스시코에','서울시 서초구 방배동 866-20', '일식', './img_foodshop/sushichoe1.jpg',
		'방배/반포/잠원', 10, 'null', '18:00 - 22:00', '02-4134-8466', '126.984389', '37.4860073');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'밴건디스테이크하우스','서울시 서초구 반포동 94-14', '양식', './img_foodshop/bangundy1.jpg',
		'방배/반포/잠원', 10, 'null', '11:30 - 22:00', '02-595-6062', '126.997719', '37.4993253');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'밀즈앤모어','서울시 서초구 잠원동 31-1', '디저트', './img_foodshop/milesan1.jpg',
		'방배/반포/잠원', 20, 'SAT,SUN', '10:00 - 19:30', '02-545-4469', '127.016279', '37.5135782');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'코아손만두','서울시 서초구 잠원동 70-2', '한식', './img_foodshop/koa1.jpg',
		'방배/반포/잠원', 20, 'SUN', '10:00 - 20:30', '02-594-3875', '127.007422', '37.5092272');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'플레이버즈','서울시 서초구 반포동 19-3', '무한리필', './img_foodshop/playbuds1.jpg',
		'방배/반포/잠원', 40, 'null', '10:00 - 23:00', '02-6282-6730', '127.002389', '37.5039205');
		
		
송파/가락
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'오향가','서울시 송파구 가락동 73-2', '중식', './img_foodshop/ohyanga1.jpg',
		'송파/가락', 10, 'null', '11:30 - 22:00', '02-401-6999', '127.121353', '37.4967506');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'앨리스리틀이태리','서울시 송파구 송파동 8', '양식', './img_foodshop/alice1.jpg',
		'송파/가락', 10, 'null', '11:30 - 22:00', '02-422-1220', '127.104814', '37.5086234');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'봉피양','서울시 송파구 방이동 205-8', '한식', './img_foodshop/bongpiyang1.jpg',
		'송파/가락', 20, 'null', '11:00 - 22:00', '02-415-5527', '127.126193', '37.5099993');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'콩당콩당','서울시 송파구 잠실동 85', '디저트', './img_foodshop/congdang1.jpg',
		'송파/가락', 10, 'SUN,MON', '12:30 - 15:30', '02-2203-1214', '127.076731', '37.5084375');

여의도
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'하쯔호','서울시 영등포구 여의도동 61', '일식', './img_foodshop/hazho1.jpg',
		'여의도', 20, 'SAT,SUN', '11:30 - 21:30', '02-780-1634', '126.939609', '37.5185816');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'폴앤폴리나','서울시 영등포구 여의도동 37', '베이커리', './img_foodshop/pole1.jpg',
		'여의도', 10, 'SUN', '12:00 - 19:00', '02-761-1966', '126.923974', '37.5209961');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'피그인더가든','서울시 영등포구 여의도동 23-5', '양식', './img_foodshop/piginthe1.jpg',
		'여의도', 10, 'null', '08:00 - 21:00', '02-761-4272', '126.922885', '37.5240227');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'팥이재','서울시 영등포구 여의도동 45-19', '베이커리', './img_foodshop/pattige1.jpg',
		'여의도', 30, 'null', '11:00 - 22:30', '02-782-1822', '126.929202', '37.5197290');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'가양칼국수버섯매운탕','서울시 영등포구 여의도동 43-3', '한식', './img_foodshop/gayang1.jpg',
		'여의도', 10, 'null', '11:30 - 21:00', '02-784-0409', '126.931282', '37.5208565');

신사/압구정
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'갓포아키','서울시 강남구 신사동 651-5', '일식', './img_foodshop/gatpo1.jpg',
		'신사/압구정', 10, 'SUN', '18:00 - 01:00', '02-540-8669', '127.036213', '37.5229985');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'가담','서울시 강남구 신사동 608-8', '중식', './img_foodshop/gadam1.jpg',
		'신사/압구정', 20, 'null', '10:30 - 22:00', '02-545-5163', '127.030242', '37.5263518');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'파씨오네','서울시 강남구 신사동 646-23', '양식', './img_foodshop/passie1.jpg',
		'신사/압구정', 50, 'null', '12:00 - 22:30', '02-546-7719', '127.036724', '37.5254400');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'랑꼬뉴','서울시 강남구 신사동 556-27', '디저트', './img_foodshop/langgoneu1.jpg',
		'신사/압구정', 10, 'MON,TUE', '12:00 - 22:00', '02-512-6767', '127.026111', '37.5219288');

영등포구
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'에베레스트','서울시 영등포구 영등포동 423-103', '인도음식', './img_foodshop/evelast1.jpg',
		'영등포구', 20, 'null', '11:00 - 23:00', '02-3667-8848', '126.906119', '37.5159554');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'전봇대곱창','서울시 영등포구 신길동 99-7', '고기', './img_foodshop/junbotdae1.jpg',
		'영등포구', 10, 'null', '17:00 - 02:00', '02-841-0131', '126.919355', '37.5142805');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'코끼리베이클','서울시 영등포구 양평동3가 69', '베이커리', './img_foodshop/koggiri1.jpg',
		'영등포구', 10, 'null', '11:00 - 21:30', '070-4184-0082', '126.893251', '37.5285944');
		

		
		
		
광화문
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'호가양꼬치','서울시 종로구 수송동 71-1', '베이커리', './img_foodshop/hogayang1.jpg',
		'광화문', 10, 'null', '17:00 - 23:30', '02-736-7277', '126.980735', '37.5728448');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'파네트크루아상팩토리','서울시 종로구 내수동 71', '베이커리', './img_foodshop/panet1.jpg',
		'광화문', 10, 'null', '09:00 - 20:30', 'null', '126.971226', '37.5739599');
		
		
연남동		
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'요코쵸','서울시 마포구 연남동 240-1', '일식', './img_foodshop/yokocho1.jpg',
		'연남동', 10, 'null', '18:00 - 02:00', '02-871-8677', '126.923510', '37.5653156');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'리틀빅토리','서울시 마포구 연남동 381-6', '디저트', './img_foodshop/littlebig1.jpg',
		'연남동', 20, 'null', '13:00 - 20:00', '010-4592-1429', '126.925687', '37.5607761');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'장작집','서울시 마포구 연남동 570-38', '한식', './img_foodshop/jangjak1.jpg',
		'연남동', 10, 'null', 'null', '02-338-8844', '126.919612', '37.5582492');
		
홍대
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'아날로그가든','서울시 마포구 서교동 446-58', '양식', './img_foodshop/analog1.jpg',
		'홍대', 20, 'SUN', '13:00 - 20:00', '010-9213-8560', '126.918031', '37.5554551');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'타르틴베이커리','서울시 마포구 서교동 354-5', '디저트', './img_foodshop/tartin1.jpg',
		'홍대', 10, 'null', '10:00 - 21:00', '02-338-8844', '126.921190', '37.5543220');
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'아이엠어버거','서울시 마포구 창전동 5-78', '햄버거', './img_foodshop/iama1.jpg',
		'홍대', 10, 'null', '11:30 - 21:00', '02-338-8507', '126.929938', '37.5541474');
		
종로
insert into foodshop(fid, fname, address, foodstyle, image, loc, discount, holiday, octime, tel, latitude, longitude)
values((select nvl(max(FID),0)+1 from foodshop),'아날로그가든','서울시 마포구 서교동 446-58', '양식', './img_foodshop/analog1.jpg',
		'종로', 10, 'SUN', '13:00 - 20:00', '010-9213-8560', '126.918031', '37.5554551');
		



