Date: 28 July 2026

Solution: 

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

mysql> CREATE DATABASE e_commerce;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| company            |
| e_commerce         |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| shop_db            |
| sys                |
| world              |
+--------------------+
9 rows in set (0.00 sec)

mysql> USE e_commerce;
Database changed
mysql> CREATE TABLE customers (
    -> customer_id INT PRIMARY KEY,
    -> customer_name VARCHAR(50),
    -> city VARCHAR(30),
    -> mobile_no VARCHAR(15) UNIQUE );
Query OK, 0 rows affected (0.05 sec)

mysql> SHOW TABLES;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customers            |
+----------------------+
1 row in set (0.00 sec)

mysql> DESCRIBE customers;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| customer_id   | int         | NO   | PRI | NULL    |       |
| customer_name | varchar(50) | YES  |     | NULL    |       |
| city          | varchar(30) | YES  |     | NULL    |       |
| mobile_no     | varchar(15) | YES  | UNI | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> INSERT INTO customers VALUES
    -> (1, "Raj", "Pune", "8930202010"),
    -> (2, "Jay", "Mumbai", "7950302099"),
    -> (3, "Komal", "Pune", "99955332229"),
    -> (4, "Megha", "Satara", "89955332229"),
    -> (5, "Nick", "Sangli", "702015955"),
    -> (6, "Rupa", "Solapur", "9923145625");
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM customers;
+-------------+---------------+---------+-------------+
| customer_id | customer_name | city    | mobile_no   |
+-------------+---------------+---------+-------------+
|           1 | Raj           | Pune    | 8930202010  |
|           2 | Jay           | Mumbai  | 7950302099  |
|           3 | Komal         | Pune    | 99955332229 |
|           4 | Megha         | Satara  | 89955332229 |
|           5 | Nick          | Sangli  | 702015955   |
|           6 | Rupa          | Solapur | 9923145625  |
+-------------+---------------+---------+-------------+
6 rows in set (0.00 sec)

mysql> INSERT INTO customers VALUES
    -> (7, "Tara", "Nashik", "9545759870");
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM customers;
+-------------+---------------+---------+-------------+
| customer_id | customer_name | city    | mobile_no   |
+-------------+---------------+---------+-------------+
|           1 | Raj           | Pune    | 8930202010  |
|           2 | Jay           | Mumbai  | 7950302099  |
|           3 | Komal         | Pune    | 99955332229 |
|           4 | Megha         | Satara  | 89955332229 |
|           5 | Nick          | Sangli  | 702015955   |
|           6 | Rupa          | Solapur | 9923145625  |
|           7 | Tara          | Nashik  | 9545759870  |
+-------------+---------------+---------+-------------+
7 rows in set (0.00 sec)

mysql> ALTER TABLE customers
    -> RENAME COLUMN city TO customer_city;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM customers;
+-------------+---------------+---------------+-------------+
| customer_id | customer_name | customer_city | mobile_no   |
+-------------+---------------+---------------+-------------+
|           1 | Raj           | Pune          | 8930202010  |
|           2 | Jay           | Mumbai        | 7950302099  |
|           3 | Komal         | Pune          | 99955332229 |
|           4 | Megha         | Satara        | 89955332229 |
|           5 | Nick          | Sangli        | 702015955   |
|           6 | Rupa          | Solapur       | 9923145625  |
|           7 | Tara          | Nashik        | 9545759870  |
+-------------+---------------+---------------+-------------+
7 rows in set (0.00 sec)

mysql> UPDATE customers
    -> SET customer_city = "Nagpur"
    -> WHERE customer_id = 3;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM customers;
+-------------+---------------+---------------+-------------+
| customer_id | customer_name | customer_city | mobile_no   |
+-------------+---------------+---------------+-------------+
|           1 | Raj           | Pune          | 8930202010  |
|           2 | Jay           | Mumbai        | 7950302099  |
|           3 | Komal         | Nagpur        | 99955332229 |
|           4 | Megha         | Satara        | 89955332229 |
|           5 | Nick          | Sangli        | 702015955   |
|           6 | Rupa          | Solapur       | 9923145625  |
|           7 | Tara          | Nashik        | 9545759870  |
+-------------+---------------+---------------+-------------+
7 rows in set (0.00 sec)