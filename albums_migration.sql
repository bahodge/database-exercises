USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(255) NOT NULL,
  album VARCHAR(255) NOT NULL,
  release_date INT UNSIGNED NOT NULL,
  genre VARCHAR (255) NOT NULL,
  certified_copies DECIMAL(3,1) NOT NULL,
  claimed_sales INT UNSIGNED NOT NULL,
  PRIMARY KEY (id)
);