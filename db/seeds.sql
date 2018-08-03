INSERT INTO burgers
    (burger_name)
VALUE
("Cheeseburger"),
("Big Mac"),
("Whopper");


INSERT INTO burgers
    (burger_name)
VALUE
("bbq");

USE burgers_db;

UPDATE burgers SET devoured=false WHERE id=5;

UPDATE burgers SET burger_name="Jalepeno Burger" WHERE id=5;

SELECT * FROM burgers