CREATE DATABASE shashank_database;

USE shashank_database;

CREATE TABLE table1 (name VARCHAR(5),usn VARCHAR(5),Mobile VARCHAR(5),Ipaddress VARCHAR(5),age INT,salary INT,id BIGINT,created_at BIGINT);

CREATE TABLE table2 (product_name VARCHAR(25),description VARCHAR(55),category VARCHAR(55),supplier VARCHAR(55),quantity INT,reorder_level INT,product_id BIGINT,supplier_id BIGINT,entity_id BIGINT  );

CREATE TABLE table3 (title VARCHAR(55),author VARCHAR(55),publisher VARCHAR(55),genre VARCHAR(55),pages INT,edition INT,isbn BIGINT,book_id BIGINT,entity_id BIGINT  
);

CREATE TABLE table4 (course_name VARCHAR(55),instructor VARCHAR(5),department VARCHAR(55),semester VARCHAR(25),credits INT,duration INT,course_id BIGINT);

CREATE TABLE table5 (project_name VARCHAR(55),client VARCHAR(25),manager VARCHAR(25),status VARCHAR(255),budget INT,team_size INT,project_id BIGINT,entity_id BIGINT  );

ALTER TABLE table1 ADD COLUMN Shashank VARCHAR(255), ADD COLUMN 1nt21ec413 VARCHAR(255);
ALTER TABLE table2 ADD COLUMN Shashank VARCHAR(255), ADD COLUMN 1nt21ec413 VARCHAR(255);
