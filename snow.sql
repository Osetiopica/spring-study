create table customer(
	custid int not null primary key,
    name varchar(45),
    address varchar(45),
    phone varchar(45)
);

create table book(
	bookid int not null primary key,
    bookname varchar(45),
	publisher varchar(45),
    price int
);

create table orders(
	orderid int not null primary key,
    custid int,
	bookid int,
    saleprice int,
    orderdate date,
    foreign key (custid) references customer (custid),
    foreign key (bookid) references book (bookid)
);

insert into book values (1, '축구의 역사', '굿스포츠', 7000);
insert into book values (2, '축구아는 여자', '나무수', 13000);
insert into book values (3, '축구의 이해', '대한미디어', 22000);
insert into book values (4, '골프 바이블', '대한미디어', 35000);
insert into book values (5, '피겨 교본', '굿스포츠', 8000);
insert into book values (6, '역도 단계별기술', '굿스포츠', 6000);
insert into book values (7, '야구의 추억', '이상미디어', 20000);
insert into book values (8, '야구를 부탁해', '이상미디어', 13000);
insert into book values (9, '올림픽 이야기', '삼성당', 7500);
insert into book values (10, 'Olympic Champions', 'Pearson', 13000);
select * from book;

insert into customer(custid, name, address, phone) values (1, '박지성', '영국 맨체스터', '000-5000-0001');
insert into customer(custid, name, address, phone) values (2, '김연아', '대한민국 서울', '000-6000-0001');
insert into customer(custid, name, address, phone) values (3, '장미란', '대한민국 강원도', '000-7000-0001');
insert into customer(custid, name, address, phone) values (4, '추신수', '미국 클리블랜드', '000-8000-0001');
insert into customer(custid, name, address, phone) values (5, '박세리', '대한민국 대전', null);
select * from customer;

insert into orders(orderid, custid, bookid, saleprice, orderdate) values (1, 1, 1, 6000, '2014-07-01');
insert into orders(orderid, custid, bookid, saleprice, orderdate) values (2, 1, 3, 21000, '2014-07-03');
insert into orders(orderid, custid, bookid, saleprice, orderdate) values (3, 2, 5, 8000, '2014-07-03');
insert into orders(orderid, custid, bookid, saleprice, orderdate) values (4, 3, 6, 6000, '2014-07-04');
insert into orders(orderid, custid, bookid, saleprice, orderdate) values (5, 4, 7, 20000, '2014-07-05');
insert into orders(orderid, custid, bookid, saleprice, orderdate) values (6, 1, 2, 12000, '2014-07-07');
insert into orders(orderid, custid, bookid, saleprice, orderdate) values (7, 4, 8, 13000, '2014-07-07');
insert into orders(orderid, custid, bookid, saleprice, orderdate) values (8, 3, 10, 12000, '2014-07-08');
insert into orders(orderid, custid, bookid, saleprice, orderdate) values (9, 2, 10, 7000, '2014-07-09');
insert into orders(orderid, custid, bookid, saleprice, orderdate) values (10, 3, 8, 13000, '2014-07-10');
select * from orders;

create table book2 as select * from book;
create table book3 as select * from book where 1 = 0 ;

drop table book2;
drop table book3;

select * from book;

alter table book add regdate date;
insert into book values (101, '당구의 역사', '스포츠출판사', 12000, sysdate);
alter table book drop (regdate);

alter table book modify price varchar(45);

alter table book modify bookname varchar(100);
alter table book modify bookname varchar(45);
alter table book modify bookname varchar(22);

select bookname, price from book;
select distinct(publisher) from book;
select bookname, price from book where price<20000;
select bookname, price from book where price between 10000 and 20000;
select bookname, publisher from book where publisher in ('굿스포츠','대한미디어');
select bookname, publisher from book where publisher not in ('굿스포츠','대한미디어');
select publisher from book where bookname='축구의 역사';
select bookname, publisher from book where bookname like '%축구%';
select bookname from book where bookname like '_구%';

select bookname from book order by bookname asc;
select bookname,price from book order by price asc, bookname asc;
select bookname,price from book order by price desc;
select bookid,bookname,price from book order by price desc, bookid asc;

select sum(saleprice) from orders;
select sum(saleprice) from orders where custid=2;
select count(*) from orders where custid=1;
select sum(saleprice),avg(saleprice),min(saleprice),max(saleprice) from orders;

select count(*), sum(saleprice) from orders group by custid;
select custid, count(*) from orders where saleprice>=8000 group by custid;
select custid, count(*) from orders where saleprice>=8000 group by custid having count(*)>=2;

select * from customer c, orders o where c.custid=o.custid;
select c.name, b.bookname from book b,customer c, orders o where b.bookid=o.bookid and c.custid=o.custid order by c.name;
select c.name, b.bookname from book b,customer c, orders o where b.bookid=o.bookid and c.custid=o.custid and o.saleprice>=20000 order by c.name;

select bookname,price from book where price=(select max(price) from book);
select name from customer where custid in (select custid from orders);

select abs(-1) from dual;
select power(2,3) from dual;

select chr(86) from dual;

select initcap('bLoOd') from dual;

select trim(' asd '),ltrim(' asd '),rtrim(' asd ') from dual;
select length('a가') from dual;

select lpad('oracle',20,'*') from dual;
select rpad('oracle',20,'*') from dual;
select SUBSTR('ABCDEFG',3,4) "Substring" FROM DUAL;
select replace('010-1234-5678','5678','****') from dual;
select instr('111111-2222222','-') from dual;
select instr('101010-1010101','0',3) from dual;
select instr('101010-1010101','0',3,2) from dual;
select sysdate+10 from dual;
select to_char(sysdate) from dual;
select trunc(sysdate-to_date('21/05/01')) from dual;
select add_months(sysdate,10) from dual;
select last_day(add_months(sysdate,9)) from dual;
select next_day(sysdate, '토') from dual;
select trunc(MONTHS_BETWEEN (TO_DATE('2021/12/31'),TO_DATE(sysdate) )) "Months" FROM DUAL;

select nvl(null,null) from dual;

create table members(
	idx number not null primary key ,
    id varchar(45) unique,
    pw varchar(45),
    name varchar(45),
    age number,
    addr VARCHAR2(50),
    reg date
);
create SEQUENCE members_seq
INCREMENT by 1
MAXVALUE 99999999
start with 1
nocycle;
insert into members values(members_seq.nextval,'111','111','홍길동',24,'대전',sysdate);
insert into members values(members_seq.nextval,'222','222','마이콜',22,'서울',sysdate);

create view view_test01 as
select c.name, b.bookname, o.saleprice
from book b, customer c, orders o
where c.custid=o.custid and b.bookid=o.bookid;
select * from view_test01;

set serverout on;
DECLARE
i int := 10;
h varchar2(45);
begin
if(i>=60) then
h := '합격';
else
h := '불합격';
end if;
DBMS_OUTPUT.PUT_LINE('i는 ' || h || '입니다.');
end;

set serverout on;
DECLARE
i int := 10;
h varchar2(45);
begin
if(mod(i,2)=0) then
h := '짝수';
elsif(mod(i,2)=1) then
h := '홀수';
end if;
DBMS_OUTPUT.PUT_LINE(i || '은 ' || h || '입니다.');
end;

set serverout on;
DECLARE
begin
for i in 1..10 loop
DBMS_OUTPUT.PUT_LINE(i);
end loop;
end;

set serverout on;
DECLARE
i number := 1;
begin
while i<=10 loop
DBMS_OUTPUT.PUT_LINE(i);
i:=i+1;
end loop;
end;

set serverout on;
DECLARE
i number := 1;
begin
loop
DBMS_OUTPUT.PUT_LINE(i);
i:=i+1;
exit when(i>10);
end loop;
end;

set serverout on;
declare
type names is varray(4) of varchar2(45);
name_arr names;
begin
name_arr := names('park','kim','hong','kang');
dbms_output.put_line('배열의 크기는 : ' || name_arr.count);
for i in 1..name_arr.count loop
dbms_output.put_line(name_arr(i));
end loop;
end;

create PROCEDURE p_test01 as
p_bookname varchar2(45);
p_publisher varchar(45);
p_price varchar2(45);
begin
select bookname,publisher,price 
into p_bookname,p_publisher,p_price 
from book where bookid=3;
DBMS_OUTPUT.put_line('결과 :' || p_bookname || ', ' || p_publisher || ', ' || p_price);
end;
drop PROCEDURE p_test01;
BEGIN
  P_TEST01();
END;
exec p_test01;

create PROCEDURE p_test02 as
begin
update book set bookname='농구의 이해' where bookname='축구의 이해';
end;
exec p_test02;
select bookname from book;

create PROCEDURE p_test03(v_bookid in book.bookid%type) as
p_bookname varchar2(45);
p_publisher book.publisher%type;
p_price number;
begin
select bookname,publisher,price into p_bookname,p_publisher,p_price from book where bookid=v_bookid;
dbms_output.put_line('결과 : ' || p_bookname || ', ' || p_publisher || ', ' || p_price);
end;
exec p_test03(1);

create PROCEDURE p_test04(bid in book.bookid%type, bname in book.bookname%type, pub in book.publisher%type, price in book.price%type) as
begin
insert into book values(bid,bname,pub,price);
end;
exec p_test04(102,'배구의 역사','스포츠과학',18000);

create PROCEDURE p_test05(bid in book.bookid%type) as
begin
delete from book where bookid=bid;
end;
exec p_test05(102);

create PROCEDURE p_test06(bav out number) as
begin
select avg(price) into bav from book where price is not null;
end;

set serverout on;
declare
res number;
BEGIN
  p_test06(res);
  dbms_output.put_line(res);
END;

create PROCEDURE p_test07(cnt out number) as
begin
select count(distinct(publisher)) into cnt from book where publisher is not null;
end;

set serverout on;
declare
res number;
BEGIN
  p_test07(res);
  dbms_output.put_line(res);
END;

select count(distinct(publisher)) from book where publisher like '%이상%';

create or replace PROCEDURE p_test08(pub in book.bookname%type, cnt out number) as
begin
select count(distinct(publisher)) into cnt from book where publisher like '%'||pub||'%';
end;

set serverout on;
declare
res number;
BEGIN
  p_test08('스포츠',res);
  dbms_output.put_line(res);
END;

create or replace PROCEDURE p_test09(bid in book.bookid%type, bname out book.bookname%type, bprc out book.price%type) as
begin
select bookname,price into bname,bprc from book where bookid=bid;
end;

set serverout on;
declare
bname book.bookname%type;
bprc book.price%type;
BEGIN
  p_test09(3,bname,bprc);
  dbms_output.put_line(bname||' : '||bprc);
END;

select book.*, book.price*0.1 from book;

create function f_test01(prc number) return number as
res number;
begin
if prc>=20000 then res:=prc*0.1;
else res:=prc*0.05;
end if;
return res;
end;

select bookname,price,f_test01(price) from book;

select * from orders;

create or replace function f_test02(date orders.orderdate%type) return varchar2 as
res varchar2(45);
begin
res := to_char(date, 'yyyy"년" mm"월" dd"일" day');
return res;
end;

select orders.*,f_test02(orderdate) from orders;

create or replace function f_test03(date orders.orderdate%type) return varchar2 as
res varchar2(45);
begin
res := to_char(date+10, 'yyyy"년" mm"월" dd"일" day');
return res;
end;

select members.*,f_test03(reg) from members;


create table guest(
	id int not null primary key,
    name varchar2(45),
    pw varchar2(45),
	title varchar2(45),
    email varchar2(45),
    text varchar2(200),
    reg date
);
insert into guest values(guest_seq.nextval,'또치','111','타이틀','gg@gmail.com','글 내용',sysdate);
select * from guest order by id desc;
update guest set title='길동길동길동', email='gildo@ng.com', text='eartwtbh' where id=25;

create table guest2(
	id int not null primary key,
    name varchar2(45),
    pw varchar2(45),
	title varchar2(45),
    email varchar2(45),
    fname varchar2(200),
    text varchar2(400),
    reg date
);
insert into guest2 values(guest2_seq.nextval,'또치','111','타이틀','gg@gmail.com','','글 내용',sysdate);

drop table guest2;


select * from guest order by id desc


- bbs_t_seq
    - comment_t_seq
    
    create sequence bbs_t_seq
    increment by 1
    start with 1;

    create sequence comment_t_seq
    increment by 1
    start with 1;
    
        CREATE TABLE bbs_t(
	b_idx 	NUMBER(6,0) CONSTRAINT bbs_t_pk PRIMARY KEY,
	subject VARCHAR2(50),
	writer	 VARCHAR2(20),
	content CLOB,
	file_name VARCHAR2(50),
	pwd	  VARCHAR2(20),
	write_date DATE,
	hit	   NUMBER(4)
     );

    CREATE TABLE comment_t(
	c_idx 	NUMBER(6,0) CONSTRAINT comm_t_pk PRIMARY KEY,
	writer	 VARCHAR2(20),
	content  CLOB,
	pwd	  VARCHAR2(20),
	write_date DATE,
	b_idx	   NUMBER(6,0),
	CONSTRAINT comm_t_fk FOREIGN KEY (b_idx) REFERENCES bbs_t(b_idx)
     );
     
    insert into bbs_t values(bbs_t_seq.nextval,'제목','둘리','내용','파일','1',sysdate,0);
    
    select * from comment_t where b_idx=167 order by c_idx asc
    insert into comment_t values(comment_t_seq.nextval,'글쓴이','내용','1',sysdate,167);
    
    select * from (select rownum rn, a.* from (select * from bbs_t order by b_idx desc) a) where rn between 1 and 4;
    
    select * from bbs_t ;
    select * from comment_t;
    
    select count(*) from bbs_t
    
create table members(
	idx number not null primary key ,
    id varchar(45) unique,
    pw varchar(45),
    name varchar(45),
    age number,
    addr VARCHAR2(50),
    reg date
);
    
create table cart(
	idx number not null primary key ,
    reg date,
    m_idx number,
    p_idx number,
    quant number,
    FOREIGN KEY (m_idx) REFERENCES members(idx),
    FOREIGN KEY (p_idx) REFERENCES shop_t(idx)
);
    
select s.* from members m, cart c, shop_t s where c.m_idx=m.idx and c.p_idx=s.idx;
    
    select c.quant from shop_t s, members m, cart c where c.m_idx=m.idx and c.p_idx=s.idx;
    
    update cart set quant=2 where p_idx=1 and m_idx=2;
    
    select s.*, c.quant from shop_t s, members m, cart c where c.m_idx=m.idx and c.p_idx=s.idx and c.m_idx=2;