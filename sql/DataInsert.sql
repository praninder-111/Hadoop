show databases;

CREATE DATABASE customers;
use customers;

CREATE TABLE customer_master(customer_id int, customer_name varchar(20), customer_zip varchar(20), customer_address varchar(20));
desc customer_master;
INSERT into customer_master values (1, "robin", "28262", NULL);
INSERT into customer_master values (2, "mcckay", "30328", NULL);
INSERT into customer_master values (3, "samanta", "20166", NULL);

CREATE TABLE customer_detailed (customer_id int, customer_address varchar(20), customer_interest varchar(20));
INSERT into customer_detailed values (1, "2302 mallard street",  "automobile");
INSERT into customer_detailed values (2, "111 Martinlutherking", "electronics");
INSERT into customer_detailed values (3, "100 south blvd", "groceries");  

-- TRIGGER 1
DROP TRIGGER Dcustomers;
CREATE TRIGGER Dcustomers AFTER DELETE on customer_master
FOR EACH ROW
DELETE FROM customer_detailed
    WHERE customer_detailed.customer_id = old.customer_id;
    
-- Example SQL statements for TRIGGER 1
SET SQL_SAFE_UPDATES=0;
DELETE FROM customer_master  WHERE customer_master.customer_id = 1;
SELECT * FROM customer_master;
SELECT * FROM customer_detailed;



-- TRIGGER 2
DROP TRIGGER Uaddress;
CREATE TRIGGER Uaddress AFTER UPDATE on customer_master
FOR EACH ROW
UPDATE customer_detailed
	SET customer_address = new.customer_address
    WHERE customer_detailed.customer_id 
    IN (SELECT customer_id FROM customer_master 
		WHERE customer_address= new.customer_address);

-- Example SQL statements for TRIGGER 2        
UPDATE customer_master SET customer_address = "india avenue" WHERE customer_id = 2; 
SELECT * FROM customer_master;
SELECT * FROM customer_detailed;
       


