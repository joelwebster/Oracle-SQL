-- create customers table
CREATE TABLE joel.customers (
  id INTEGER NOT NULL,
  firstName VARCHAR2(255) NOT NULL,
  surName VARCHAR2(255) NOT NULL,
  city VARCHAR2(255) NOT NULL,
  country VARCHAR2(255) NOT NULL
);
commit;

-- select from customers table
select * from customers;

-- insert data into customers table
INSERT INTO joel.customers(
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
INSERT INTO joel.customers(id,firstName,surName,city,country) VALUES(3,'Sharad','Patel','Essex','UK');

INSERT INTO joel.customers(id,firstName,surName,city,country) VALUES(4,'Lauren','Jones','Essex','UK');
commit;