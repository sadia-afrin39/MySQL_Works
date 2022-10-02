create table orders(
 id int not null auto_increment,
 ordernum varchar(20),
 cust_id int (10),
 pro_id int (10),
 price decimal (20,2),
orderdate datetime default current_timestamp ,
primary key(id),
foreign key (cust_id) references customer(id),
foreign key (pro_id) references products(id)
)

create view result as
select concat(firstname,' ',lastname) as name, age, email
from customers where city='Barishal';