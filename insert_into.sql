-- select from employees table
select * from employees;

-- create employees2 table
CREATE TABLE joel.employees2 (
  id INTEGER NOT NULL,
  firstName VARCHAR2(255) NOT NULL,
  surName VARCHAR2(255) NOT NULL,
  city VARCHAR2(255) NOT NULL,
  country VARCHAR2(255) NOT NULL
);
commit;

-- add foreign key type column
alter table joel.employees2
  add department_id integer;
commit;

-- insert data from employees table into employees_2
insert into employees2
select * from employees;

-- select employees 2 for validation
select * from employees2;

-- union all
select * from
(select * from employees
union all
select * from employees2)
order by id;

-- create table as
create table customers2 as
  select * from customers;

-- select new table
select * from customers2;


-- select distinct
select distinct id from customers2;