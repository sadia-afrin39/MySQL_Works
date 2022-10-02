CREATE DATABASE SHOPPING;

CREATE TABLE product(
	p_id INT (10) not null auto_increment,
	p_name VARCHAR (20),
	price DECIMAL(20,2),
	brand VARCHAR(20),
	P_date datetime default current_timestamp    <!--insert cuurent time as default -->
	
	);
	
	
	insert into product(p_id,p_name,price,brand)
	values
	(0001,"Kurti",5000,"Arong"),    <!---single or double coute doesn't matter-->
	(002,"Panjabi",2570,"wildcart")
	
	
	drop DATABASE SHOPPING;
	
	drop TABLE product;	
	
	alter table customer
	add cotact_no varchar(15);    <!--alter is used for modifying columns-->
	
	
	alter table product 
	drop column brand ;
	
	
	delete from product
	where p_name="Panjabi";
	
	
	delete* from product;   <!--delete the total table-->
	
	update customer
	set CITY='JAPAN'	<!--update is used for modifying rows-->
	where C_ID=3003;
	
	
	select* from customer;
	
	
	select CITY,GRADE
	from customer;
	
	select max(price) AS highestprize from product;   {

	select min(price) AS lowestprize from product;	  { <!--aliases sum,count,first,last-->
	
	SELECT AVG(price) AS PriceAverage FROM product;   {
	
	
	select C_NAME,sum(GRADE)
	from customer 	          <!--having filters data on grouped rows--> 
	Group by C_NAME
	having sum(GRADE)>100
	
	
	order by sum(salary) desc
	
	
	select count(*) from salesman    <!--number of records in a table-->
	
	
	select count(S_id) from salesman	<!--number of values of the s-id column-->
	
	
	select count(distinct city) from salesman	<!--number of distinct values of the city column-->
		
	
	select departmentname,gender
	count(*)from dbo.employee
	group by departmentname,gender
	
	
	select *
	from salesman
	where CITY="Paris"
	group by NAME 
	
	
	select* from product 
	where (price between 10 and 20)    <!--selsects all products with a price between 10 & 20-->
	and not catagoryid in(1,2,3);		<!--but products with a catagoryid 1.2.3 will not displayed-->
	
	
	select  c_name from product 
	where price between 10 and 20;  	<!--selsects c_name with a price between 10 & 20-->
	

	select  c_name from product 
	where price  not between 10 and 20;	  <!--selsects all products without the range-->
	

	
	select city from product 
	where  c_name like '%s' or 's%' or '%s%' ;   <!--selects city which have c_name  s in end or s in first or s in middle--> 	
	where c_name not like '%s' or 's%' or '%s%' ;	<!--selects city which not have c_name  s in end or s in first or s in middle--> 	
	

	
	select C_NAME from customer natural join salesman
	 <!--actually natural join does the folling-->
	select C_NAME from customer,salesman
	where customer.C_ID=salesman.C_ID

	
	
	<!--wildcard-->
	SELECT * FROM Customers        <!--elects all customers with a City starting with any character, followed by "erlin"-->
	WHERE City LIKE '_erlin';
	
	
	SELECT * FROM Customers
	WHERE City LIKE 'L_n_on';		<!--selects all customers with a City starting with "L", followed by any character, followed by "n", followed by any character, followed by "on"-->
	

	SELECT * FROM Customers
	WHERE City LIKE '[bsp]%';		<!--selects all customers with a City starting with "b", "s", or "p"-->
	
	
	SELECT * FROM Customers
	WHERE City LIKE '[a-c]%';		<!--selects all customers with a City starting with "a", "b", or "c"-->

	

	SELECT * FROM Customers
	WHERE City LIKE '[!bsp]%';		<!--selects all customers with a City NOT starting with "b", "s", or "p"-->
	or
	SELECT * FROM Customers
	WHERE City NOT LIKE '[bsp]%';
	<!--end wildcard-->

	
	
	select t1.sid from study as t1,study as t2		<!--self join-->
	where t1.sid = t2.sid and t1.cid <> t2.cid ;     <!-- find student id who is studing at least two courses?-->


	select e_name,e_no,d_name,location 
	from employee left outer join department    <!--left outer join-->
	 or employee.d_no = department.d_no;
	 
	 
	select e_name,e_no,d_name,location 
	from employee right outer join department    <!--right outer join-->
	 or employee.d_no = department.d_no ;
	 
	 
	 select e_name from employee,dept			<!--equi join-->
	 where employee.e_no = dept.e_no			
	 and employee.address = dept.location;		<!--find the employee name who works in a dept and dept.location = employee.address-->  
		
		
	select customers.firstname,customers.lastname,orders.orderno       <!--inner join-->
	from customers inner join orders
	on customers.id=orders.customerid
	order by customers.lastname;
	
	
	select customers.firstname,customers.lastname,orders.orderno       <!--left join-->
	from customers left join orders
	on customers.id=orders.customerid
	order by customers.lastname;
	
	
	
	select orders.orderno ,customers.firstname,customers.lastname       <!--right join-->
	from orders right join customers
	on orders.customerid=customers.id
	order by customers.lastname;
	
	
	select orders.orderno,customers.firstname,customers.lastname,products.name      <!-- join multiple table-->
	from  orders inner join products
	on orders.productid=products.id
	inner join customers
    on orders.customerid=customers.id
	order by orders.orderno;
	
	
	select * from customer 
	where id in(select id from customers      	,	<!--Select subquery-->
				where age>30
				);
				
				
	update customers  
	set salary= salary*0.23
	where age in(select age from customers_backup	  <!--upadte subquery-->
				where age>30
				);				
				
				
				
	delete  from customers_backup
	where age in(select age from customers	  <!--delete subquery-->
				where age>30
				);	

 truncate table suppliers <!-- only drop all data not the table
 
 
 
 select c.name from customers as c;    <!--alliase table-->
 
 
 
 create view results as 
 select concat(firstname,' ',lastname)as name,age,email    <!-- creating virtual table using view-->
from customers where city not null 
with check option;      <!-- give an error message when condition is not satisfied-->




	insert into results
	values
	(0001,"Kurti",null,"Arong"),       <!---insert into view table-->
	(002,"Panjabi",2570,"wildcart")
	
	
	rename orders to ordersses;
	
	
	select extract(month from orderdate)  as ordermonth from orders;    <!--extract day,month,year,hour,minute,second-->
	
	
	select replace(Address,'th','ab') as newaddress from player    <!--replace th by ab from address column in player table-->
	
	
	select substr(Address,2,5) as newaddress from player          --returns all address name from index 2-5

	
	
	
	<!--delimiter-->
	
DELIMITER $$
create function aver (id int) returns decimal(10,2)
BEGIN
return (select pur_price/qty as average from purchase where pur_id = id);
end $$
DELIMITER ;    <!--space is a must-->

		
<!--drop function if exists getproductname $$
declare product_name varchar (100) default "";
select Pname into product_name from product where p_id=id;
returns product_name;-->