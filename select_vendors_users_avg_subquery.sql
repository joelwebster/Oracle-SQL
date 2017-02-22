select * from vendors;

-- get the average number of users of all vendors
select avg(users) from vendors;

-- get the top 2 vendors, where number of users is > the average accross all vendors

select * from(
select id, name, users from vendors
where users > (select avg(users) from vendors)
order by users desc)
where rownum <= 2
order by users asc;