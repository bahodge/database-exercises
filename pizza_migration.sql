USE codeup_test_db;

DROP TABLE if EXISTS pizza;

CREATE TABLE pizza(
order_number INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(50),
phone_number VARCHAR(15) NOT NULL,
email VARCHAR(50) NOT NULL,
address VARCHAR(100) NOT NULL,
pizza_size CHAR(2) NOT NULL,
total_cost DECIMAL(6,2) NOT NULL,
decription TEXT,
is_delivered BOOLEAN NOT NULL,
created_at DATE NOT NULL,
updated_at DATE,
PRIMARY KEY (order_number)
);

