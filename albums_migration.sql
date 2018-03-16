USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(50) NOT NULL,
  name VARCHAR(50),
  release_date DATE,
  sales DECIMAL(10, 2),
  genre TEXT NOT NULL,
  PRIMARY KEY (id)
);