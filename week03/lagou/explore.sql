select `city`,`company`,`salary`
from(
    select * from positions where city = 'JS'
) as t1
order by `company`;

with t1 as(
    select * from positions where city = 'SH'
)
select `city`,`company`,`salary` from t1 order by `company`,`salary`;

with t1 as(
    select * from positions where city = 'JS' and salary in ('15k-30k','10k-15k·13薪')
)
select `city`,`company`,`salary` from t1 order by `company`,`salary`;

with t1 as(
    select * from positions where city = 'JS' and salary like '1_k%'
)
select `city`,`company`,`salary` from t1 order by `company`,`salary`;

with t1 as(
    select * from positions where city = 'JS' and salary like '1_k%'
)
select count(1) as '月薪过万招聘数量' from t1 ;

create view over_ten_thousand_view as (
    with t1 as (
        select *
        from positions
        where city = 'JS' and salary like '1_k%'
    )
    select * from t1
);

create view over_ten_thousand_view_2 as
    select city,company,salary
    from positions
    where city = 'JS' and salary like '1_k%';

select city,company,salary,year(now())
from over_ten_thousand_view_2;

select city,company,salary,date(now())
from over_ten_thousand_view_2;
-- sql server
--
select * into JS_positions
from positions
where city = 'JS';

--  mysql  使用 create table  new_table_name as select * from old_table_name ;

create table xxx as select ...

-- 在CTAS语句中指定表的存储格式，行和列的分隔符等
create table xxx
  row format delimited
  fields terminated by ' '
  stored as parquet
as
select ...

create table JS_positions as
    select * from positions
    where city = 'JS';

-- 插入数据操作
insert into person values ('Gates', 'Bill', 'Xuanwumen 10', 'Beijing');
--
-- PDATE 表名称 SET 列名称 = 新值 WHERE 列名称 = 某值
--
UPDATE Person SET Address = 'Zhongshan 23', City = 'Nanjing'
WHERE LastName = 'Wilson';

-- DELETE 语句用于删除表中的行。
--
DELETE FROM Person WHERE LastName = 'Wilson'

DELETE FROM table_name
DELETE * FROM table_name

-- SQL JOIN
-- 除了我们在上面的例子中使用的 INNER JOIN（内连接），我们还可以使用其他几种连接。
--
-- 下面列出了您可以使用的 JOIN 类型，以及它们之间的差异。
--
-- JOIN: 如果表中有至少一个匹配，则返回行
-- LEFT JOIN: 即使右表中没有匹配，也从左表返回所有的行
-- RIGHT JOIN: 即使左表中没有匹配，也从右表返回所有的行
-- FULL JOIN: 只要其中一个表中存在匹配，就返回行

-- 我们将主要探讨以下几种约束：
--
-- NOT NULL
-- UNIQUE
-- PRIMARY KEY
-- FOREIGN KEY
-- CHECK
-- DEFAULT
ALTER TABLE Persons
ADD UNIQUE (Id_P)

ALTER TABLE Persons
DROP INDEX uc_PersonID

ALTER TABLE Persons
ADD PRIMARY KEY (Id_P)

ALTER TABLE Persons
DROP PRIMARY KEY

-- 下面的 SQL 在 "Orders" 表创建时为 "Id_P" 列创建 FOREIGN KEY：
CREATE TABLE Orders
(
Id_O int NOT NULL,
OrderNo int NOT NULL,
Id_P int,
PRIMARY KEY (Id_O),
FOREIGN KEY (Id_P) REFERENCES Persons(Id_P)
)

ALTER TABLE Orders
ADD FOREIGN KEY (Id_P)
REFERENCES Persons(Id_P)

ALTER TABLE Orders
DROP FOREIGN KEY fk_PerOrders

CREATE TABLE Persons
(
Id_P int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CONSTRAINT chk_Person CHECK (Id_P>0 AND City='Sandnes')
)

ALTER TABLE Persons
ADD CHECK (Id_P>0)

ALTER TABLE Persons
DROP CHECK chk_Person

truncate table xx_table_name

ALTER TABLE Persons
ADD Birthday date

ALTER TABLE Persons
ALTER COLUMN Birthday year

ALTER TABLE Person
DROP COLUMN Birthday

-- auto-increment
CREATE TABLE Persons
(
P_Id int NOT NULL AUTO_INCREMENT,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
PRIMARY KEY (P_Id)
)

-- SQL 撤销视图

SQL DROP VIEW Syntax
DROP VIEW view_name

-- 无法使用比较运算符来测试 NULL 值，比如 =, <, 或者 <>。
--
-- 我们必须使用 IS NULL 和 IS NOT NULL 操作符。
SQL IS NULL
SQL IS NOT NULL


SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
FROM Persons
INNER JOIN Orders
ON Persons.Id_P=Orders.Id_P
ORDER BY Persons.LastName

SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
FROM Persons
LEFT JOIN Orders
ON Persons.Id_P=Orders.Id_P
ORDER BY Persons.LastName

SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
FROM Persons
RIGHT JOIN Orders
ON Persons.Id_P=Orders.Id_P
ORDER BY Persons.LastName

SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
FROM Persons
FULL JOIN Orders
ON Persons.Id_P=Orders.Id_P
ORDER BY Persons.LastName
