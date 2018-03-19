USE codeup_test_db;

# UPDATE quotes
# SET author_first_name = 'Samuel', author_last_name = 'Clemens'
# WHERE id = 4;

# Shows all albums in table
SELECT album FROM albums;
UPDATE albums SET claimed_sales = (claimed_sales * 10);


# Shows all albums before 1980
SELECT album FROM albums WHERE release_date < 1980;
UPDATE  albums SET release_date = (release_date - 100);

# All michael jackson albums
SELECT album FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT * FROM albums;
