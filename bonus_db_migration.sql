USE bonus_db;

DROP TABLE IF EXISTS bonus_table;

CREATE TABLE bonus_table (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(50) NOT NULL,
  product_cost DECIMAL(5,2) NOT NULL,
  sold_status BOOLEAN NOT NULL,
  PRIMARY KEY (id)
);