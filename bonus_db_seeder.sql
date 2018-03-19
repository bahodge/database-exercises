USE bonus_db;

TRUNCATE bonus_table;

INSERT INTO bonus_table(product_name, product_cost, sold_status)
VALUES ('bike', 250.00, true),
  ('cat', 100.00, false),
  ('bat',30.00,true),
  ('fish',50.00,false),
  ('nes',200.00,true),
  ('n64',300.00,false),
  ('ps3',400.00,true),
  ('dog',75.00,false),
  ('drill',60.00,false);

