--QUERIES START HERE
--UC1--
Create database Payroll_services

--UC2--
Create table employee_payroll
(
   Id int identity primary key,
   name varchar(Max) Not null,
   salary money default 1000,
   startDate DateTime default GetDate()
)
--UC3--
Insert into employee_payroll(name,salary,startDate) values('Ravi',51111,GETDATE()),('Ajay',52333,GETDATE())

--UC4--
select *
from employee_payroll

--UC5--
select *
from employee_payroll
where name='Ravi'

--UC6--

Alter table employee_payroll
Add Gender char(1) Not null default 'N'

UPDATE employee_payroll SET Gender = 'M'
WHERE name = 'Ravi'

--UC7--
 SELECT SUM(salary) FROM employee_payroll
 WHERE Gender = 'M' GROUP BY Gender

--UC8--
ALTER TABLE employee_payroll add phone_number bigint;                  --Alter the table by adding new column
alter table employee_payroll ALTER COLUMN phone_number VARCHAR(250);   --Alter any column of the table
select *  from employee_payroll


alter table employee_payroll add address varchar(20) NOT NULL default'Grakhpur';
select *  from employee_payroll


