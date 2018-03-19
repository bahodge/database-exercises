use codeup_test_db;

# all albums from 1991 +
DELETE FROM albums WHERE release_date >= 1991;

# Albums with a DISCO genre
DELETE FROM albums WHERE genre = 'Disco';

#Albums from whitney houston
DELETE FROM albums WHERE artist = 'Michael Jackson';