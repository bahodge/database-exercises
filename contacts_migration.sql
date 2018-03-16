USE codeup_test_db;

DROP TABLE if EXISTS contacts;

CREATE TABLE contacts (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
number VARCHAR(50) NOT NULL,
created_at DATE NOT NULL,
upadtated_at DATE,
PRIMARY KEY (id)
);
