-- codeup_test_user *YoMama123
-- codeup_test_db

warnings
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR (50) DEFAULT 'Unknown',  -- artist name
    name VARCHAR (50),                      -- record name
    release_date INT(4) UNSIGNED NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR (500) DEFAULT 'None',
    PRIMARY KEY (id)
);