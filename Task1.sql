Date 23 July 2026

Question: Create employee table with following field:
empl_id
email
name
salary
joining_date
department
mobile

Solution:

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| shop_db            |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> CREATE DATABASE company;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| company            |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| shop_db            |
| sys                |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> USE company;
Database changed
mysql> CREATE TABLE employee (
    ->     emp_id INT PRIMARY KEY,
    ->     name VARCHAR(50) NOT NULL,
    ->     email VARCHAR(50) UNIQUE,
    ->     salary DECIMAL(10,2) CHECK (salary > 10000),
    ->     joining_date DATE,
    ->     department VARCHAR(50) DEFAULT 'IT',
    ->     mobile VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> SHOW TABLES;
+-------------------+
| Tables_in_company |
+-------------------+
| employee          |
+-------------------+
1 row in set (0.00 sec)

mysql> DESCRIBE employee;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| emp_id       | int           | NO   | PRI | NULL    |       |
| name         | varchar(50)   | NO   |     | NULL    |       |
| email        | varchar(50)   | YES  | UNI | NULL    |       |
| salary       | decimal(10,2) | YES  |     | NULL    |       |
| joining_date | date          | YES  |     | NULL    |       |
| department   | varchar(50)   | YES  |     | IT      |       |
| mobile       | varchar(20)   | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
7 rows in set (0.00 sec)
