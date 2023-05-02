/* Create table about the famous people and what they do here */
CREATE TABLE stars (
id INTEGER PRIMARY KEY autoincrement,
fullname TEXT,
profession TEXT);

INSERT INTO stars(fullname, profession) VALUES ("Tom Cruise", "Actor");
INSERT INTO stars(fullname, profession) VALUES ("Vin Diesel", "Actor");
INSERT INTO stars(fullname, profession) VALUES ("The Rock", "Actor");
INSERT INTO stars(fullname, profession) VALUES ("Ana de Armas", "Actor");
INSERT INTO stars(fullname, profession) VALUES ("Scarlett", "Actor");
INSERT INTO stars(fullname, profession) VALUES ("Emma Stone", "Actor");
INSERT INTO stars(fullname, profession) VALUES ("Matt Damon", "Actor");
INSERT INTO stars(fullname, profession) VALUES ("Dhanush", "Actor");
INSERT INTO stars(fullname, profession) VALUES ("Simon Pegg", "Actor");


CREATE TABLE movies (
id INTEGER PRIMARY KEY autoincrement,
star_id INTEGER,
name TEXT,
status TEXT);

INSERT INTO movies(star_id, name, status) VALUES (1, "Mission Impossible", "HIT");
INSERT INTO movies(star_id, name, status) VALUES (2, "Fast & Furious", "HIT");
INSERT INTO movies(star_id, name, status) VALUES (3, "Fast & Furious", "HIT");
INSERT INTO movies(star_id, name, status) VALUES (4, "The Gray Man", "Average");
INSERT INTO movies(star_id, name, status) VALUES (5, "Avengers", "HIT");
INSERT INTO movies(star_id, name, status) VALUES (6, "La La Land", "Average");
INSERT INTO movies(star_id, name, status) VALUES (7, "Mars", "HIT");
INSERT INTO movies(star_id, name, status) VALUES (8, "The Gray Man", "Average");
INSERT INTO movies(star_id, name, status) VALUES (9, "Mission Impossible", "HIT");


/* What movies are the stars in */

SELECT stars.fullname, movies.name, movies.status
 FROM stars
 LEFT JOIN movies
 ON stars.id = movies.star_id;
 
