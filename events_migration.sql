USE events_db;

DROP TABLE IF EXISTS attendees;

CREATE TABLE attendees (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  PRIMARY KEY (id)
);

CREATE TABLE presentations (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  pres_name VARCHAR(255) NOT NULL,
  location VARCHAR(50) NOT NULL,
  time VARCHAR(5) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE att_pres (
  att_id INT UNSIGNED NOT NULL ,
  pres_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (att_id) REFERENCES attendees(id),
  FOREIGN KEY (pres_id) REFERENCES presentations(id)
);
