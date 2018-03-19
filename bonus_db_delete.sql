USE bonus_db;

#Delete all sold items
DELETE FROM bonus_table WHERE sold_status = true;

DELETE FROM bonus_table WHERE product_cost < 50;

DROP TABLE bonus_table;