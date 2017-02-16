-- create table
create table joel.contractors(
  forenames varchar2(50),
  surname varchar2(50),
  eu_citizen char,
  day_rate decimal(6,2),
  department_id integer
);
commit;

-- insert data
insert all
  into contractors(forenames,surname,eu_citizen,day_rate,department_id)
  values('Pritesh','Gandhi','Y',550.00,5)
  into contractors(forenames,surname,eu_citizen,day_rate,department_id)
  values('Salman','Mir','Y',600.00,5)
  into contractors(forenames,surname,eu_citizen,day_rate,department_id)
  values('Ian','McLaughlin','Y',500.00,6)
select * from dual;
commit;

-- add non-eu contractor
insert into joel.contractors
values ('Mahesh','Choudhari','N',460.00,6);
commit;

-- check table with select
select * from joel.contractors;

-- select EU contractors and their department
  -- grouped by department, ordered by day rate
select c.forenames, c.surname, c.day_rate, nvl(d.department,'Unassigned') from contractors c
left join departments d
on c.department_id = d.id
where c.eu_citizen = 'Y'
order by d.department asc, c.day_rate desc;

-- insert record with non-existent department id
insert into joel.contractors
values('Joel','Webster','Y',100.00,7);
commit;

-- sum day rates by department
select nvl(d.department,'Unassigned'), sum(c.day_rate) as department_day_rates
from contractors c
left join departments d
on c.department_id = d.id
where c.eu_citizen = 'Y'
group by d.department
having sum(c.day_rate) > 150
order by department_day_rates desc;

-- select the department name length
select id, department, length(department) * 5
from joel.departments;

-- select employees table
select * from joel.employees;

-- select the average name length
select avg(length(firstName||surName)) from joel.employees;

-- select records where name length is greater than the average name length
select firstName, surName, length(firstName||surName) from joel.employees
where length(firstName || surName) > (select avg((length(firstName || surName))) from joel.employees);

-- concat function for same purpose
select firstName, surName, length(concat(firstName,surName)) as nameLength
from joel.employees;