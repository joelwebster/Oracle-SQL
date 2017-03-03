-- create tables
create table users(
  id integer,
  name varchar2(30));
  
create table sessions(
  id integer,
  duration integer,
  user_id integer);
  
-- insert data
insert into users values(1,'Joel');
insert into users values(2,'Sharad');
insert into users values(3,'Michael');
insert into users values(4,'Lauren');
insert into users values(5,'James');

insert into sessions values(1,2,1);
insert into sessions values(2,1,2);
insert into sessions values(3,3,3);
insert into sessions values(4,1,4);
insert into sessions values(5,2,3);
insert into sessions values(6,1,5);
insert into sessions values(7,3,1);

-- show the average session duration for each user, where their average duration is greater than 1 hour
select u.id, avg(s.duration) as avgd
from users u
inner join sessions s
on u.id = s.user_id
group by u.id
having avg(s.duration) > 1;

select u.id, avg(s.duration) as avgd
from users u
inner join sessions s
on u.id = s.user_id
where (select avg(duration) from sessions) > 2
group by u.id;

-- show the number of sessions open for each user, where they have at least 2 sessions open
select u.id, s.duration, count(*)
from users u
inner join sessions s
on u.id = s.user_id
group by u.id, s.duration
having count(*) > 2;

-- count number of sessions per user and average duration of all sessions per user where user has more than 1 session and an average duration of more than 2 hours.
select u.id, u.name, count(s.id), avg(s.duration)
from users u
inner join sessions s
on u.id = s.user_id
group by u.id, u.name
having count(s.id) > 1 and avg(s.duration) > 2;



