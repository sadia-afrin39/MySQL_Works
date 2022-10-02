CREATE DATABASE shopping

CREATE TABLE salesman(
	S_ID INT NOT NULL,
	NAME VARCHAR (30),
	CITY VARCHAR (20),
	COMISSSOION DECIMAL (10,2),	
	PRIMARY KEY (S_ID)
	);
	
	
CREATE TABLE customer(
	C_ID INT NOT NULL, 
	C_NAME VARCHAR (50),
	CITY VARCHAR(20),
	GRADE INT (10),
	S_ID INT NOT NULL,
	PRIMARY KEY (C_ID),
	FOREIGN KEY(S_ID) REFERENCES Salesman(S_ID)	
	);
	
	
	
	INSERT INTO salesman(S_ID,NAME,CITY,COMISSSOION)	
	values 	
	(5001,"James","Paris",0.15),
	(5002,"Hong","New York",0.12),
	(5003,"Kim","London",0.18),
	(5004,"Jong","Paris",0.19)
	
	
	
	INSERT INTO customer(C_ID,C_NAME,CITY,GRADE,S_ID)	
	values	
	(3002,"Peter","new york",100,5003),
	(3001,"Ronald","Paris",200,5004),
	(3003,"Hans","London",NULL,5001),
	(3004,"Tram","London",300,5003)
	
	
	
	SELECT salesman.NAME, customer.C_NAME, customer.CITY	
	FROM salesman,customer
	WHERE salesman.CITY=customer.CITY;
	
	
	
	
	