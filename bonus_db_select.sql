use bonus_db;

# SELECT ALL SOLD
SELECT * FROM bonus_table WHERE sold_status = 1;

#SELECT ALL INFO FOR PRODUCTS OVER 100
SELECT * FROM bonus_table WHERE product_cost > 100.00;

#NAME AND SOLD STATUS FROM PS3
SELECT product_name, sold_status FROM bonus_table WHERE product_name = 'ps3';

#GET PRICE OF DOG
SELECT product_cost FROM bonus_table WHERE product_name = 'dog';

#SOLD STATUS FOR ALL PRODUCTS OVER 199.00
SELECT sold_status FROM bonus_table WHERE product_cost > 199.00;