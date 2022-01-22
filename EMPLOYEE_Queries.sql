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