

create table FOODSHOP(
fid number not null PRIMARY key,
fname VARCHAR2(30) not null,
address VARCHAR2 (100) not null,
foodstyle VARCHAR2(30),
image VARCHAR2(30),
image_menu VARCHAR2(30),
loc VARCHAR2(30),
discount INT,
holiday VARCHAR2(30),
octime VARCHAR2(30),
tel VARCHAR2(30)
);

insert into foodshop(fid, fname, address, foodstyle, image, image_menu, loc, discount, holiday, octime, tel)
values((select nvl(max(FID),0)+1 from foodshop),'대낚식당','서울시 강남구 역삼동 751-17', '한식', './img_foodshop/daenak.jpg',
		'./img_menu/daenak_menu.png', '강남역', 50, 'SUN', '12:00 - 24:00', '02-558-5561');


create table review(
    rid NUMBER CONSTRAINT review_pk PRIMARY key,
    userid varchar2(30),
    fid number,
    image VARCHAR2(30),
    text VARCHAR2(100),
    eval VARCHAR2(30) DEFAULT 'normal' check(eval in('good','normal','bad')),
    pubdate DATE
  );

create table address(
    address VARCHAR2(30) CONSTRAINT address_pk primary key ,
    latitude VARCHAR2(30),
    longitude VARCHAR2(30)
);


alter table review add CONSTRAINT review_fk FOREIGN key(userid) REFERENCES users;
alter table review add CONSTRAINT review_fk1 FOREIGN key(fid) REFERENCES foodshop;
alter table foodshop add CONSTRAINT foodshop_fk FOREIGN key(address) REFERENCES address;




