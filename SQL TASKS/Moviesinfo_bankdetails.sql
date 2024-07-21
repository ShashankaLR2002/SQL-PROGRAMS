CREATE DATABASE Movie_Info_Bank_Info;
USE Movie_Info_Bank_Info;
CREATE TABLE movie_info (
    title VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    budget BIGINT,
    is_sequel BOOLEAN
);

CREATE TABLE bank_details (
    account_number VARCHAR(20),
    account_holder VARCHAR(255),
    balance BIGINT,
    branch_code INT,
    is_active BOOLEAN
);


ALTER TABLE movie_info
ADD COLUMN genre VARCHAR(100),
ADD COLUMN duration INT,
ADD COLUMN rating DECIMAL(3, 1),
ADD COLUMN language VARCHAR(100),
ADD COLUMN country VARCHAR(100);

ALTER TABLE bank_details
ADD COLUMN bank_name VARCHAR(255),
ADD COLUMN account_type VARCHAR(100),
ADD COLUMN opening_date DATE,
ADD COLUMN credit_score INT,
ADD COLUMN phone_number VARCHAR(15);


ALTER TABLE movie_info
RENAME COLUMN genre TO movie_genre,
RENAME COLUMN duration TO movie_duration,
RENAME COLUMN rating TO movie_rating,
RENAME COLUMN language TO movie_language,
RENAME COLUMN country TO movie_country;

ALTER TABLE bank_details
RENAME COLUMN bank_name TO bank_branch,
RENAME COLUMN account_type TO acct_type,
RENAME COLUMN opening_date TO acct_opening_date,
RENAME COLUMN credit_score TO customer_credit_score,
RENAME COLUMN phone_number TO contact_number;


INSERT INTO movie_info (title, director, release_year, budget, is_sequel, movie_genre, movie_duration, movie_rating, movie_language, movie_country)
VALUES
('K.G.F: Chapter 1', 'Prashanth Neel', 2018, 80000000, TRUE, 'Action', 156, 8.2, 'Kannada', 'India'),
('Raajakumara', 'Santhosh Ananddram', 2017, 15000000, FALSE, 'Drama', 148, 8.7, 'Kannada', 'India'),
('Sarkari Hi. Pra. Shaale, Kasaragodu', 'Rishab Shetty', 2018, 5000000, FALSE, 'Comedy', 141, 8.5, 'Kannada', 'India'),
('Kirik Party', 'Rishab Shetty', 2016, 4000000, FALSE, 'Comedy', 165, 8.3, 'Kannada', 'India'),
('Ulidavaru Kandanthe', 'Rakshit Shetty', 2014, 6000000, FALSE, 'Crime', 154, 8.4, 'Kannada', 'India'),
('Lucia', 'Pawan Kumar', 2013, 5000000, FALSE, 'Thriller', 135, 8.3, 'Kannada', 'India'),
('Ugramm', 'Prashanth Neel', 2014, 8000000, FALSE, 'Action', 132, 8.4, 'Kannada', 'India'),
('Mungaru Male', 'Yograj Bhat', 2006, 2000000, FALSE, 'Romance', 143, 8.3, 'Kannada', 'India'),
('Gaalipata', 'Yograj Bhat', 2008, 3000000, FALSE, 'Romance', 158, 8.2, 'Kannada', 'India'),
('Bell Bottom', 'Jayatheertha', 2019, 7000000, FALSE, 'Thriller', 130, 8.3, 'Kannada', 'India');

INSERT INTO bank_details (account_number, account_holder, balance, branch_code, is_active, bank_branch, acct_type, acct_opening_date, customer_credit_score, contact_number)
VALUES
('KA1234567890', 'Ramesh Bhat', 50000, 1001, TRUE, 'Bangalore Main', 'Savings', '2020-01-15', 750, '1234567891'),
('KA2345678901', 'Suresh Rao', 150000, 1002, TRUE, 'Mysore Road', 'Checking', '2019-06-23', 780, '0321654987'),
('KA3456789012', 'Meera Patil', 20000, 1003, FALSE, 'MG Road', 'Savings', '2018-11-01', 690, '3210654987'),
('KA4567890123', 'Deepa Shetty', 100000, 1004, TRUE, 'Rajajinagar', 'Checking', '2021-03-14', 720, '1236547891'),
('KA5678901234', 'Vinod Kumar', 75000, 1005, TRUE, 'Jayanagar', 'Savings', '2022-02-22', 800, '9854612378'),
('KA6789012345', 'Anita Hegde', 30000, 1006, FALSE, 'Koramangala', 'Savings', '2017-07-19', 680, '9856789412'),
('KA7890123456', 'Arun Prasad', 85000, 1007, TRUE, 'Indiranagar', 'Checking', '2023-05-10', 790, '9865234789'),
('KA8901234567', 'Pooja Desai', 120000, 1008, TRUE, 'Whitefield', 'Savings', '2021-09-30', 740, '5689741235'),
('KA9012345678', 'Ganesh Rao', 110000, 1009, TRUE, 'Hebbal', 'Checking', '2020-12-25', 770, '5897461258'),
('KA0123456789', 'Sunil Gowda', 60000, 1010, FALSE, 'Yelahanka', 'Savings', '2019-04-12', 710, '8457912356');


UPDATE movie_info SET budget = 85000000 WHERE title = 'K.G.F: Chapter 1';
UPDATE movie_info SET release_year = 2019 WHERE title = 'Bell Bottom';
UPDATE movie_info SET movie_rating = 8.8 WHERE title = 'Raajakumara';
UPDATE movie_info SET movie_duration = 150 WHERE title = 'Kirik Party';
UPDATE movie_info SET director = 'Rishab Shetty' WHERE title = 'Ulidavaru Kandanthe';
UPDATE bank_details SET balance = 80000 WHERE account_number = 'KA1234567890';
UPDATE bank_details SET branch_code = 1006 WHERE account_number = 'KA2345678901';
UPDATE bank_details SET is_active = FALSE WHERE account_number = 'KA3456789012';
UPDATE bank_details SET account_holder = 'Anita Shetty' WHERE account_number = 'KA5678901234';
UPDATE bank_details SET acct_type = 'Business' WHERE account_number = 'KA6789012345';


DELETE FROM movie_info WHERE title = 'Lucia';
DELETE FROM bank_details WHERE account_number = 'KA6789012345';


SELECT * FROM movie_info WHERE director = 'Prashanth Neel';


SELECT * FROM movie_info WHERE release_year = 2018 AND budget > 50000000;


SELECT * FROM movie_info WHERE director = 'Yograj Bhat' OR movie_genre = 'Romance';


SELECT * FROM bank_details WHERE account_number NOT IN ('KA5678901234','KA6789012345','KA7890123456');

SELECT * FROM movie_info WHERE release_year IN (2019, 2016,2014,2018,2008);
SELECT * FROM bank_details WHERE contact_number IN (5689741235,5897461258,8457912356);