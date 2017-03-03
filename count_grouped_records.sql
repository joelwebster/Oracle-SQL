select id, city, firstname, surname, count(*) from customers
group by id, city, firstname, surname;

create view vw_employees_by_department as
  select e.id, e.firstname, e.surname, d.department
  from joel.employees e
  left join departments d
  on e.department_id = d.id;

select * from departments;

select * from employees;

-- update record
update employees
set department_id = 1
where surname in ('Harrison','Smith');
commit;

select * from vw_employees_by_department;

-- create view showing number of employees in each department
select d.department, count(*)
from departments d
inner join employees e
on d.id = e.department_id
group by d.department;
