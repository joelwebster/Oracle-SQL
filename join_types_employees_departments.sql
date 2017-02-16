-- select from employees
select * from employees;

-- select from departments
select * from departments;

-- inner join, shows just complete records
select e.id, e.firstName, e.surName, d.department
from employees e
inner join departments d
on e.department_id = d.id;

-- full outer join, shows all records
select e.id, e.firstName, e.surName, d.department
from employees e
full join departments d
on e.department_id = d.id;

-- left join, shows all records from the left table (employees)
select e.id, e.firstName, e.surName, d.department
from employees e
left join departments d
on e.department_id = d.id;

-- right join, shows all records from the right table (departments)
select e.id, e.firstName, e.surName, d.department
from employees e
right join departments d
on e.department_id = d.id;