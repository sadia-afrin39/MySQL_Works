CREATE DATABASE lab2b
CREATE TABLE student(

	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR (100),
	roll VARCHAR(10),
	phone VARCHAR(20),
	degree_id INT(10),
	PRIMARY KEY (id),
	UNIQUE (roll,phone),
	FOREIGN KEY(degree_id) REFERENCES degree(id)
	);
CREATE TABLE degree(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(20),
	duration DECIMAL(10,2),
	credit DECIMAL(10,2),
	PRIMARY KEY(id)
	);