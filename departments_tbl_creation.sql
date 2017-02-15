-- create department table
CREATE TABLE joel.departments(
id INTEGER,
department VARCHAR2(255)
);
commit;

-- check table created
select * from joel.departments;

-- insert single data row
INSERT INTO joel.departments(
id,
department
)
VALUES(
1,
Finance
);
commit;

-- insert multiple rows - insert all
INSERT ALL
  INTO joel.departments(id,department)
    VALUES(1,'Finance')
  INTO joel.departments(id,department)
    VALUES(2,'Sales')
  INTO joel.departments(id,department)
    VALUES(3,'HR')
SELECT * FROM dual;
commit;