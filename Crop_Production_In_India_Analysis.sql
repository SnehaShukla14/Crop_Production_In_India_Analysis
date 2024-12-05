mysql> CREATE DATABASE Agriculture;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| agriculture        |
| anpc8905           |
| demo               |
| information_schema |
| mortality          |
| mysql              |
| performance_schema |
| sneha              |
| sql_lab            |
| sys                |
+--------------------+
10 rows in set (0.07 sec)

mysql> USE Agriculture;
Database changed

mysql> CREATE TABLE Crop_Production (id INT AUTO_INCREMENT PRIMARY KEY, State_Name VARCHAR(100) NOT NULL, District_Name VARCHAR(100) NOT NULL, Crop_Year INT NOT NULL, Season VARCHAR(50) NOT NULL, Crop VARCHAR(100) NOT NULL, Area DECIMAL(10,2) NOT NULL, Production DECIMAL(15,2) NULL);
Query OK, 0 rows affected (0.03 sec)

mysql> DESC Crop_Production;
+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| id            | int           | NO   | PRI | NULL    | auto_increment |
| State_Name    | varchar(100)  | NO   |     | NULL    |                |
| District_Name | varchar(100)  | NO   |     | NULL    |                |
| Crop_Year     | int           | NO   |     | NULL    |                |
| Season        | varchar(50)   | NO   |     | NULL    |                |
| Crop          | varchar(100)  | NO   |     | NULL    |                |
| Area          | decimal(10,2) | NO   |     | NULL    |                |
| Production    | decimal(15,2) | YES  |     | NULL    |                |
+---------------+---------------+------+-----+---------+----------------+
8 rows in set (0.04 sec)

mysql> INSERT INTO Crop_Production (State_Name, District_Name, Crop_Year, Season, Crop, Area, Production)
    -> VALUES
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2000, 'Kharif', 'Arecanut', 1254, 2000),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2000, 'Kharif', 'Other Kharif pulses', 2, 1),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2000, 'Kharif', 'Rice', 102, 321),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2000, 'Whole Year', 'Banana', 176, 641),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2000, 'Whole Year', 'Cashewnut', 720, 165),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2000, 'Whole Year', 'Coconut', 18168, 65100000),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2000, 'Whole Year', 'Dry ginger', 36, 100),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2000, 'Whole Year', 'Sugarcane', 1, 2),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2000, 'Whole Year', 'Sweet potato', 5, 15),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2000, 'Whole Year', 'Tapioca', 40, 169),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2001, 'Kharif', 'Arecanut', 1254, 2061),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2001, 'Kharif', 'Other Kharif pulses', 2, 1),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2001, 'Kharif', 'Rice', 83, 300),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2001, 'Whole Year', 'Cashewnut', 719, 192),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2001, 'Whole Year', 'Coconut', 18190, 64430000),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2001, 'Whole Year', 'Dry ginger', 46, 100),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2001, 'Whole Year', 'Sugarcane', 1, 1),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2001, 'Whole Year', 'Sweet potato', 11, 33),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2002, 'Kharif', 'Rice', 189.2, 510.84),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2002, 'Whole Year', 'Arecanut', 1258, 2083),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2002, 'Whole Year', 'Banana', 213, 1278),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2002, 'Whole Year', 'Black pepper', 63, 13.5),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2002, 'Whole Year', 'Cashewnut', 719, 208),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2002, 'Whole Year', 'Coconut', 18240, 67490000),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2002, 'Whole Year', 'Dry chillies', 413, 28.8),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2002, 'Whole Year', 'Dry ginger', 47.3, 133),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2002, 'Whole Year', 'Sugarcane', 5, 40),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2003, 'Kharif', 'Rice', 52, 90.17),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2003, 'Whole Year', 'Arecanut', 1261, 1525),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2003, 'Whole Year', 'Banana', 266, 1763),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2003, 'Whole Year', 'Black pepper', 75.5, 15.86),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2003, 'Whole Year', 'Cashewnut', 717, 208.5),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2003, 'Whole Year', 'Coconut', 18284.74, 68580000),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2003, 'Whole Year', 'Dry chillies', 60, 102),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2003, 'Whole Year', 'Dry ginger', 102, 326.4),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2003, 'Whole Year', 'Other oilseeds', 4.2, 0.3),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2004, 'Kharif', 'Rice', 52.94, 72.57),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2004, 'Whole Year', 'Arecanut', 1264.7, 805.85),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2004, 'Whole Year', 'Banana', 66.42, 404.12),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2004, 'Whole Year', 'Black pepper', 85, 15.86),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2004, 'Whole Year', 'Cashewnut', 683.5, 197.9),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2004, 'Whole Year', 'Coconut', 18394.7, 52380000),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2004, 'Whole Year', 'Dry chillies', 60, 145.2),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2004, 'Whole Year', 'Dry ginger', 118, 366),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2004, 'Whole Year', 'Other oilseeds', 1, 0.11),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2005, 'Kharif', 'Rice', 2.09, 12.06),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2005, 'Whole Year', 'Arecanut', 795.67, Null),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2005, 'Whole Year', 'Banana', 22, 582),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2005, 'Whole Year', 'Black pepper', 41, 0.1),
    -> ('Andaman and Nicobar Islands', 'NICOBARS', 2005, 'Whole Year', 'Cashewnut', 450, 55.8);
Query OK, 50 rows affected (0.05 sec)
Records: 50  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Crop_Production;
+----+-----------------------------+---------------+-----------+------------+---------------------+----------+-------------+
| id | State_Name                  | District_Name | Crop_Year | Season     | Crop                | Area     | Production  |
+----+-----------------------------+---------------+-----------+------------+---------------------+----------+-------------+
|  1 | Andaman and Nicobar Islands | NICOBARS      |      2000 | Kharif     | Arecanut            |  1254.00 |     2000.00 |
|  2 | Andaman and Nicobar Islands | NICOBARS      |      2000 | Kharif     | Other Kharif pulses |     2.00 |        1.00 |
|  3 | Andaman and Nicobar Islands | NICOBARS      |      2000 | Kharif     | Rice                |   102.00 |      321.00 |
|  4 | Andaman and Nicobar Islands | NICOBARS      |      2000 | Whole Year | Banana              |   176.00 |      641.00 |
|  5 | Andaman and Nicobar Islands | NICOBARS      |      2000 | Whole Year | Cashewnut           |   720.00 |      165.00 |
|  6 | Andaman and Nicobar Islands | NICOBARS      |      2000 | Whole Year | Coconut             | 18168.00 | 65100000.00 |
|  7 | Andaman and Nicobar Islands | NICOBARS      |      2000 | Whole Year | Dry ginger          |    36.00 |      100.00 |
|  8 | Andaman and Nicobar Islands | NICOBARS      |      2000 | Whole Year | Sugarcane           |     1.00 |        2.00 |
|  9 | Andaman and Nicobar Islands | NICOBARS      |      2000 | Whole Year | Sweet potato        |     5.00 |       15.00 |
| 10 | Andaman and Nicobar Islands | NICOBARS      |      2000 | Whole Year | Tapioca             |    40.00 |      169.00 |
| 11 | Andaman and Nicobar Islands | NICOBARS      |      2001 | Kharif     | Arecanut            |  1254.00 |     2061.00 |
| 12 | Andaman and Nicobar Islands | NICOBARS      |      2001 | Kharif     | Other Kharif pulses |     2.00 |        1.00 |
| 13 | Andaman and Nicobar Islands | NICOBARS      |      2001 | Kharif     | Rice                |    83.00 |      300.00 |
| 14 | Andaman and Nicobar Islands | NICOBARS      |      2001 | Whole Year | Cashewnut           |   719.00 |      192.00 |
| 15 | Andaman and Nicobar Islands | NICOBARS      |      2001 | Whole Year | Coconut             | 18190.00 | 64430000.00 |
| 16 | Andaman and Nicobar Islands | NICOBARS      |      2001 | Whole Year | Dry ginger          |    46.00 |      100.00 |
| 17 | Andaman and Nicobar Islands | NICOBARS      |      2001 | Whole Year | Sugarcane           |     1.00 |        1.00 |
| 18 | Andaman and Nicobar Islands | NICOBARS      |      2001 | Whole Year | Sweet potato        |    11.00 |       33.00 |
| 19 | Andaman and Nicobar Islands | NICOBARS      |      2002 | Kharif     | Rice                |   189.20 |      510.84 |
| 20 | Andaman and Nicobar Islands | NICOBARS      |      2002 | Whole Year | Arecanut            |  1258.00 |     2083.00 |
| 21 | Andaman and Nicobar Islands | NICOBARS      |      2002 | Whole Year | Banana              |   213.00 |     1278.00 |
| 22 | Andaman and Nicobar Islands | NICOBARS      |      2002 | Whole Year | Black pepper        |    63.00 |       13.50 |
| 23 | Andaman and Nicobar Islands | NICOBARS      |      2002 | Whole Year | Cashewnut           |   719.00 |      208.00 |
| 24 | Andaman and Nicobar Islands | NICOBARS      |      2002 | Whole Year | Coconut             | 18240.00 | 67490000.00 |
| 25 | Andaman and Nicobar Islands | NICOBARS      |      2002 | Whole Year | Dry chillies        |   413.00 |       28.80 |
| 26 | Andaman and Nicobar Islands | NICOBARS      |      2002 | Whole Year | Dry ginger          |    47.30 |      133.00 |
| 27 | Andaman and Nicobar Islands | NICOBARS      |      2002 | Whole Year | Sugarcane           |     5.00 |       40.00 |
| 28 | Andaman and Nicobar Islands | NICOBARS      |      2003 | Kharif     | Rice                |    52.00 |       90.17 |
| 29 | Andaman and Nicobar Islands | NICOBARS      |      2003 | Whole Year | Arecanut            |  1261.00 |     1525.00 |
| 30 | Andaman and Nicobar Islands | NICOBARS      |      2003 | Whole Year | Banana              |   266.00 |     1763.00 |
| 31 | Andaman and Nicobar Islands | NICOBARS      |      2003 | Whole Year | Black pepper        |    75.50 |       15.86 |
| 32 | Andaman and Nicobar Islands | NICOBARS      |      2003 | Whole Year | Cashewnut           |   717.00 |      208.50 |
| 33 | Andaman and Nicobar Islands | NICOBARS      |      2003 | Whole Year | Coconut             | 18284.74 | 68580000.00 |
| 34 | Andaman and Nicobar Islands | NICOBARS      |      2003 | Whole Year | Dry chillies        |    60.00 |      102.00 |
| 35 | Andaman and Nicobar Islands | NICOBARS      |      2003 | Whole Year | Dry ginger          |   102.00 |      326.40 |
| 36 | Andaman and Nicobar Islands | NICOBARS      |      2003 | Whole Year | Other oilseeds      |     4.20 |        0.30 |
| 37 | Andaman and Nicobar Islands | NICOBARS      |      2004 | Kharif     | Rice                |    52.94 |       72.57 |
| 38 | Andaman and Nicobar Islands | NICOBARS      |      2004 | Whole Year | Arecanut            |  1264.70 |      805.85 |
| 39 | Andaman and Nicobar Islands | NICOBARS      |      2004 | Whole Year | Banana              |    66.42 |      404.12 |
| 40 | Andaman and Nicobar Islands | NICOBARS      |      2004 | Whole Year | Black pepper        |    85.00 |       15.86 |
| 41 | Andaman and Nicobar Islands | NICOBARS      |      2004 | Whole Year | Cashewnut           |   683.50 |      197.90 |
| 42 | Andaman and Nicobar Islands | NICOBARS      |      2004 | Whole Year | Coconut             | 18394.70 | 52380000.00 |
| 43 | Andaman and Nicobar Islands | NICOBARS      |      2004 | Whole Year | Dry chillies        |    60.00 |      145.20 |
| 44 | Andaman and Nicobar Islands | NICOBARS      |      2004 | Whole Year | Dry ginger          |   118.00 |      366.00 |
| 45 | Andaman and Nicobar Islands | NICOBARS      |      2004 | Whole Year | Other oilseeds      |     1.00 |        0.11 |
| 46 | Andaman and Nicobar Islands | NICOBARS      |      2005 | Kharif     | Rice                |     2.09 |       12.06 |
| 47 | Andaman and Nicobar Islands | NICOBARS      |      2005 | Whole Year | Arecanut            |   795.67 |        NULL |
| 48 | Andaman and Nicobar Islands | NICOBARS      |      2005 | Whole Year | Banana              |    22.00 |      582.00 |
| 49 | Andaman and Nicobar Islands | NICOBARS      |      2005 | Whole Year | Black pepper        |    41.00 |        0.10 |
| 50 | Andaman and Nicobar Islands | NICOBARS      |      2005 | Whole Year | Cashewnut           |   450.00 |       55.80 |
+----+-----------------------------+---------------+-----------+------------+---------------------+----------+-------------+
50 rows in set (0.01 sec)

mysql>