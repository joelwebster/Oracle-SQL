-- Select employee name by department
select e.firstName, e.surName, d.department
from employees e
full join -- full join to include nulls
departments d
on e.department_id = d.id;

-- Create employee with no department
insert into employees(id,firstName,surName,city,country)
values(2,'John','Smith','New York','USA');
commit;

-- If department is null, replace with 'NO DEPARTMENT'
select e.firstName, e.surName, nvl(d.department,'NO DEPARTMENT')
from employees e
full join -- full join to include nulls
departments d
on e.department_id = d.id;