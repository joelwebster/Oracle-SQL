-- Aggregate functions

-- Average all users from software vendor table
  -- grab top 2
  -- order descending
  
-- create vendors and users table
create table joel.vendors(
id integer,
name varchar2(255),
users integer
);
commit;

-- insert vendors
insert into joel.vendors
values(1,'Microsoft',88934);
commit;

insert into joel.vendors values(1,'Microsoft',8934);
insert into joel.vendors values(2,'Apple',8474);
insert into joel.vendors values(3,'Oracle',6038);
insert into joel.vendors values(4,'Adobe',4134);
insert into joel.vendors values(5,'Norton',3999);
insert into joel.vendors values(6,'McAffee',1000);
insert into joel.vendors values(7,'Apple',5123);
commit;

-- truncate vendors table
truncate table joel.vendors
commit;

-- select vendors table
select * from joel.vendors;

--
select * from
(select name,users from vendors
where users < (select avg(users) from joel.vendors)
order by users desc)
where rownum <= 2
order by users asc;

-- having - equivalent to where but for aggregate functions
select name, sum(users) as "Sum of users"
from vendors
group by name
having sum(users) > 1;

-- distinct, removes duplicates
select distinct city, country from joel.customers; -- distinct city, state combinations
select distinct city from joel.customers;
select city from joel.customers;
select distinct city,country from joel.employees;

