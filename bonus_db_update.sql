USE bonus_db;

#update product cost for < 3 id;
UPDATE bonus_table SET product_cost = (product_cost + 50.00) WHERE id < 3;

#change the name of ps3 to ps4 and price to 500 and sold status to false;
UPDATE bonus_table SET product_name = 'ps4', product_cost = 500.00, sold_status = false WHERE product_name = 'ps3';

#Change all sold values to false;
update bonus_table SET sold_status = false WHERE sold_status = true;

#Change sold values of items over 200 to true;
UPDATE bonus_table SET sold_status = true WHERE product_cost >= 200;