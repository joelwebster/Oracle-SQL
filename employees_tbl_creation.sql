-- create employees table
CREATE TABLE joel.employees (
  id INTEGER NOT NULL,
  firstName VARCHAR2(255) NOT NULL,
  surName VARCHAR2(255) NOT NULL,
  city VARCHAR2(255) NOT NULL,
  country VARCHAR2(255) NOT NULL
);
commit;

-- add foreign key type column
alter table joel.employees
  add department_id integer;
  
commit;

-- insert department ids
UPDATE employees
SET department_id = 3
WHERE id = 4;
commit;

-- select from customers table
select * from employees;

-- insert data into customers table
INSERT INTO joel.employees(
  id,
  firstName,
  surName,
  city,
  country
)
VALUES(
  1,
  'Joel',
  'Webster',
  'Essex',
  'UK'
);
commit;

-- insert more
INSERT INTO joel.employees(id,firstName,surName,city,country) VALUES(3,'Sharad','Patel','Essex','UK');

INSERT INTO joel.employees(id,firstName,surName,city,country) VALUES(4,'Lauren','Jones','Essex','UK');
commit;