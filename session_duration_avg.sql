select d.department, count(*)
from departments d
inner join employees e
on d.id = e.department_id
group by d.department;

select d.department, count(*)
from departments d
left join employees e
on d.id = e.department_id
group by d.department
having count(*) > 1;

-- select the average session duration where the average duration is greater than the average duration across all users
select u.id, avg(s.duration) as average_session_duration
from joel.sessions s
inner join joel.users u
on u.id = s.user_id
where avg(s.duration) > (select avg(duration) from joel.sessions);

-- select the average sessiond duration, per customer, where the average session duration is greater than 1
select u.id, avg(s.duration) as average_session_duration
from joel.sessions s
inner join joel.users u
on u.id = s.user_id
group by u.id
having avg(s.duration) >= 1;

--
select u.id, avg(s.duration) as average_session_duration
from joel.users u
inner join joel.sessions s
on u.id = s.user_id
group by u.id
having count(s.id) >= 2;

-- count session ids for each user id
select u.id, count(s.id)
from joel.users u
inner join joel.sessions s
on u.id = s.user_id
group by u.id;