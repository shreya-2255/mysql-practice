Date: 27 July 2026

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
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> CREATE DATABASE shop_db;
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

mysql> USE shop_db;
Database changed
mysql> CREATE TABLE products (
    -> product_id INT PRIMARY KEY,
    -> product_name VARCHAR(50) NOT NULL,
    -> category VARCHAR(30) NOT NULL,
    -> price DECIMAL(8,2) NOT NULL,
    -> stock INT DEFAULT 0 );
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW TABLES;
+-------------------+
| Tables_in_shop_db |
+-------------------+
| products          |
+-------------------+
1 row in set (0.00 sec)

mysql> DESCRIBE products;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| product_id   | int          | NO   | PRI | NULL    |       |
| product_name | varchar(50)  | NO   |     | NULL    |       |
| category     | varchar(30)  | NO   |     | NULL    |       |
| price        | decimal(8,2) | NO   |     | NULL    |       |
| stock        | int          | YES  |     | 0       |       |
+--------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> INSERT INTO products VALUES
    -> (1, "Laptop", "Electronics", 55000.00, 10),
    -> (2, "Mouse", "Electronics", 550, 25),
    -> (3, "Notebook", "Stationery", 1550.00, 30),
    -> (4, "Pen", "Stationery", 50.00, 5),
    -> (5, "Keyboard", "Electronics", 900, 15),
    -> (6, "Headphones", "Stationery", 2000.00, 8);
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM products;
+------------+--------------+-------------+----------+-------+
| product_id | product_name | category    | price    | stock |
+------------+--------------+-------------+----------+-------+
|          1 | Laptop       | Electronics | 55000.00 |    10 |
|          2 | Mouse        | Electronics |   550.00 |    25 |
|          3 | Notebook     | Stationery  |  1550.00 |    30 |
|          4 | Pen          | Stationery  |    50.00 |     5 |
|          5 | Keyboard     | Electronics |   900.00 |    15 |
|          6 | Headphones   | Stationery  |  2000.00 |     8 |
+------------+--------------+-------------+----------+-------+
6 rows in set (0.00 sec)