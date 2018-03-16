USE codeup_test_db;

# Everything by pink floyd
SELECT * FROM albums WHERE artist = 'Pink Floyd';

# Release date of sgt. peppers...
SELECT release_date FROM albums WHERE album = 'Sgt. Peppers Lonely Hearts Club Band' ;

# Nevermind album's genre
SELECT genre FROM albums WHERE album = 'Nevermind';

# Albums with release dates in 90's
SELECT album FROM albums WHERE release_date BETWEEN 1990 and 1999;

# All albums with < 20mil sales
SELECT album FROM albums WHERE certified_copies < 20.0;

# ALL albums with rock genre
SELECT album FROM albums WHERE genre = 'Rock';