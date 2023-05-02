/* Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items. */



CREATE TABLE bikes (id INTEGER PRIMARY KEY, name TEXT, price NUMERIC, stock INTEGER, itemssold INTEGER, color TEXT);

INSERT INTO bikes VALUES(1, "fz150", 65000, 10, 5, "red");
INSERT INTO bikes VALUES(2, "fz250", 75000, 5, 1, "blue");
INSERT INTO bikes VALUES(3, "fz650", 85000, 40, 13, "silver-orange");
INSERT INTO bikes VALUES(4, "fz150", 65000, 3, 2, "blue");
INSERT INTO bikes VALUES(5, "gixxer250", 95000, 34, 18, "black");
INSERT INTO bikes VALUES(6, "gixxer650", 105000, 2, 0, "green");

SELECT SUM(itemssold) FROM bikes;
SELECT name, color FROM bikes ORDER BY price;
SELECT id,name FROM bikes WHERE price > 70000 AND color = "blue";
