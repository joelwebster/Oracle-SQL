-- create tables
create table joel.friday(
  friday_id integer,
  fname varchar2(50),
  sname varchar2(50),
  pay_id integer
);
commit;

create table joel.pay(
  pay_id integer,
  pay_level varchar(30),
  amount decimal(7,2)
);
commit;

-- insert data
insert all
  into joel.friday
  values (1,'Joel','Webster',7)
  into joel.friday
  values (2,'David','Webster',6)
  into joel.friday
  values (3,'Sharad','Patel',5)
select * from dual;
commit;

insert all
  into joel.pay
  values (5,'Level 5',23000.00)
  into joel.pay
  values (6,'Level 6',25000.00)
  into joel.pay
  values (7,'Level 7',27000.00)
select * from dual;
commit;

-- select from both tables
select * from joel.friday;
select * from joel.pay;


-- join tables
select f.fname, f.sname, p.pay_level, p.amount
from friday f
inner join pay p
on f.pay_id = p.pay_id;

-- select total pay to employees by surname
select sum(p.amount) as total_pay, f.sname
from friday f
inner join pay p
on f.pay_id = p.pay_id
group by f.sname;












