create TABLE employee(
fname varchar(50),
	Minit char(1), 
	Lname varchar(10),
	Ssn BIGINT,Bdate date,Adress varchar(50),Sex CHAR(1),Salary int,Super_ssn bigint,Dno int);
	
CREATE table department(
Dname varchar(20),
	Dnumber int ,
	Mgr_ssn int,
	Mgr_start_date date);

insert into EMPLOYEE(Fname,Minit,Lname,Ssn,bdate,Adress,Sex,Salary,Super_ssn,Dno)
values('john','B','Smith',123456789,'1965-01-09','731 Fondren Houston TX','M',30000,333445555,5 ),
('Franklin','T','Wrong',333445555,'1955-12-08','630 Voss Houston Tx','M',40000,888665555,5),
('Alicia','J','Zelaya',999887777,'1968-01-19','3321, Castle,Spring,TX','F',25000,987654321,4),
('Jennifer','S','Wallace',987654321,'1941-06-20','291, Berry,Bellaire,TX','F',43000,888665555,4),
('Ramesh','K','Narayan',666884444,'1962-09-15','975 Fire Oak,Humble,TX','M',38000,333445555,5),
('joyce','A','English',453453453,'1972-07-31','5631 ice,Houstan,TX','F',25000,333445555,5),
('Ahmad','V','jabbar',987987987,'1969-03-29','980 Dallas,Houston,TX','M',25000,987654321,4),
('James','E','Botg',888665555,'1937-11-10','450 Stone,Houston,TX','M',55000,null,1);

select * from employee;

insert into DEPARTMENT(dname,dnumber,mgr_ssn,mgr_start_date)
values
('Research',5,333445555,'1988-05-22'),
('Administration',4,987654321,'1995-01-01'),
('Headquaters',1,888665555,'1981-06-19');	
select * from DEPARTMENT;
--query3
select Ssn,Fname,Lname from employee join department on employee.dno = department.dnumber
where DEPARTMENT.dname = 'Research';

--query4
select fname,lname,dno,salary
from employee
order by salary desc;

--query5
select fname,lname,dno,salary 
from employee
where salary > 20000 and salary < 50000;

--query6
select distinct Dno
from employee;

--query7
SELECT department.dname , sum(employee.salary) from employee 
full join department 
on employee.dno = department.dnumber
group by department.dname;
--QUERY 8
update employee
set salary = 25000
where dno = 5;

alter table employee
add phone_no int;

--query 9 
update employee
set phone_no = 906432178
where fname = 'john';

--query 10
select salary*1.1 from employee 
inner join department on employee.dno = department.dnumber
where dname = 'Research';

--query 11
select min(salary), max(salary),avg(salary)
from employee
inner join department on dno = dnumber 
where dname = 'Administration'

--query 12 
select dname , count(*) from department 
inner join employee on dnumber = dno
GROUP 