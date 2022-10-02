create database labtest2;

create table employee(
id int not null auto_increment,
name varchar (20),
email varchar (20),
phone varchar(15), 
address varchar (30),
salary decimal(20,2),
supervisor int (10),
dept_no int (10),
join_date date,
primary key(id),
foreign key (supervisor) references employee(id)
);

	
create table location(
location_id int not null auto_increment,
city varchar (20),
statee varchar(20),
primary key (location_id )
);

create table department(
d_id int not null auto_increment,
d_name varchar (20),
manager int (10),
location_id int (10),
primary key(d_id),
foreign key (manager) references employee(id),
foreign key (location_id) references location(location_id )
);

create table project(
p_id int not null auto_increment,
p_name varchar (20),
dept int (10),
primary key (p_id ),
foreign key (dept) references department(d_id) 
);

create table works_on(
e_id int (10),
p_id int (10),
hours decimal (10,2),
primary key (e_id, p_id),
foreign key (e_id) references employee(id),
foreign key (p_id) references project(p_id )
);

alter table employee
add foreign key(dept_no) references department(d_id);



