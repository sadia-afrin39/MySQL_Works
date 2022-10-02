
--procedure in php myadmin
--general query: for example
select * from product;


--TRIGGER--
--INSERT
insert into logs VALUES(null, NEW.p_id, 'inserted', NOW())
--UPDATE
UPDATE product
set qty=qty+ NEW.qty
WHERE p_id=NEW.p_id

--Functions
DELIMITER $$
drop function if exists getProductName $$
create function getProductName(p_id int) returns varchar(100)
begin 
declare product_name varchar(100) default "";
select pname into product_name from product where p_id=p_id;
q=q+2;
return product_name;
END $$


DELIMITER ;



--calling function
SELECT pur_id, getProductName(p_id) as productName FROM purchase;


--TRIGGER
insert into logs(id, p_id, ldate, action) VALUES(null, New.p_id, NOW(), "inseted");

update product
set qty=qty+NEW.qty
WHERE p_id=NEW.p_id

--PROCEDURE
SELECT * FROM product where p_id=id


insert into purchase( p_id, pdate, qty, price) 
VALUES(id, pdate, qt, price)

--FUNCTIONS

DELIMITER $$
CREATE FUNCTION getName(id int) returns varchar(100)
begin
return (select pname from product where p_id=id);
END $$
DELIMITER ;

select getName(p_id), qty, price from purchase;






