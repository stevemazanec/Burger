CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE burgers
(
    id INTEGER
    AUTO_INCREMENT NOT NULL,
    burger_name VARCHAR
    (40) NOT NULL,
    devoured BOOLEAN DEFAULT FALSE,
    PRIMARY KEY
    (id)
);

SELECT * FROM burgers;

INSERT INTO burgers
    (burger_name)
VALUE
("Cheeseburger"),
("Big Mac"),
("Whopper");