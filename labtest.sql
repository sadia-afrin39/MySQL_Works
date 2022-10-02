CREATE database labtest

drop table employees

create table employees(
id int not null auto_increment,
Firstname varchar(10),
Lastname varchar(10),
mail varchar(30),
Phone_No varchar (15),
Hiring_date date,
Job_type varchar (20),
Salary decimal(20,2),
primary key(id)
)

insert into employees(id,Firstname,Lastname,mail,Phone_No,Hiring_date,Job_type,Salary)
	values
	(0001,'Sadia','Afrin','sadiatarin@gmail.com','01903153062',2018-02-05,'Chairman','45000'),   
	(0002,'Hafsa','Islam','hafsaislam@gmail.com','01903153982',2017-08-02,'Lecturer','35000'),   
	(0003,'Fatema','Akter','fatemaakter@gmail.com','01904563062',2018-05-24,'Lecturer','35000'),   	
	(0004,'Kazi','Mafruha','kazimafruha@gmail.com','01993153062',2017-05-02,'Assistant Professor','40000')  

Q1:		
select concat(Firstname,' ',Lastname) AS 'Name',Phone_No,Salary,Salary*.15 AS PF
from employees;

Q2:
select count(distinct Job_type) from employees;

Q3:
select * from employees
order by id desc
limit 2;

Q4:
select concat(Firstname,' ',Lastname) AS 'Name',Hiring_date
from employees
where Hiring_date like '2017%';

Q5:
select*from employees as temp_employees;

Q6:
select count(id),Job_type
from employees
group by Job_type;


Q7:

select Firstname, max(Salary)
from employees
where Job_type='IT';

Q8:

select Job_type,max(Salary)
from employees
group by Job_type;

Q11:
select Job_type,id
from employees;

Q13:
select Phone_No
from employees
where Phone_No like '0%';

Q14:

select Firstname,Hiring_date,curdate()-Hiring_date as Experience
from employees;

Q16:
select curdate();


Q19:
select* from employees as temp_employees
alter table temp_employees  
add age int(10);

Q21:
	insert into employees(id,Firstname,Lastname,mail,Phone_No,Hiring_date,Job_type,Salary)
	values
	(0001,'Sadia','Afrin','sadiatarin@gmail.com','01903153062',2018-02-05,'Chairman','45000'),   
	(0002,'Hafsa','Islam','hafsaislam@gmail.com','01903153982',2017-08-02,'Lecturer','35000'),   
	(0003,'Fatema','Akter','fatemaakter@gmail.com','01904563062',2018-05-24,'Lecturer','35000')

