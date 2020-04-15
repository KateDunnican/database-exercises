-- codeup_test_user *YoMama123
-- codeup_test_db

warnings
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR (100) DEFAULT 'Unknown',  -- artist name
    `name` VARCHAR (100),                      -- record name
    release_date INT(4) UNSIGNED NOT NULL,
    genre VARCHAR (500) DEFAULT 'None',
    sales FLOAT NOT NULL,
    PRIMARY KEY (id)
);