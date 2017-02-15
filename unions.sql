-- select
select * from customers;
select * from employees;

-- union all - shows duplicates
select city, country from employees
union all
select city, country from customers;

-- union - omit duplicates
select city, country from employees
union
select city, country from customers;

