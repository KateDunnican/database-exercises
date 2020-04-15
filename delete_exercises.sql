USE codeup_test_db;

SELECT * FROM albums WHERE release_date > 1991;

SELECT * FROM albums WHERE genre LIKE '%disco%';  -- OR = 'disco', more restrictive

SELECT * FROM albums WHERE artist LIKE '%whitney houston%';

-- Converted to DELETEs

DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre LIKE '%disco%';  -- OR = 'disco', more restrictive

DELETE FROM albums WHERE artist LIKE '%whitney houston%';

