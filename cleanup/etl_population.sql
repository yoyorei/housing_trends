CREATE DATABASE IF NOT EXISTS etl_project;
USE etl_project;

SELECT * FROM population LIMIT 25;

-- add primary key
ALTER TABLE population
ADD id INT AUTO_INCREMENT PRIMARY KEY FIRST;

-- rename columns of interest
ALTER TABLE population
CHANGE `Geographic Area` geo_area text,
CHANGE `2010` y_2010 text,
CHANGE `2011` y_2011 text,
CHANGE `2012` y_2012 text,
CHANGE `2013` y_2013 text,
CHANGE `2014` y_2014 text,
CHANGE `2015` y_2015 text,
CHANGE `2016` y_2016 text;

-- turn off safe updates
SET SQL_SAFE_UPDATES = 0;

-- remove commas from str numbers
UPDATE population
SET geo_area = REPLACE(geo_area,'.',''),
	y_2010 = REPLACE(y_2010,',',''),
	y_2011 = REPLACE(y_2011,',',''),
	y_2012 = REPLACE(y_2012,',',''),
	y_2013 = REPLACE(y_2013,',',''),
	y_2014 = REPLACE(y_2014,',',''),
	y_2015 = REPLACE(y_2015,',',''),
	y_2016 = REPLACE(y_2016,',','');

-- check how many entries
SELECT COUNT(*) FROM population;

-- remove empty entries
DELETE FROM population
WHERE geo_area = '';

-- confirm entry deletions
SELECT COUNT(*) FROM population;

-- turn on safe updates again
SET SQL_SAFE_UPDATES = 1;

-- convert columns to int datatype
ALTER TABLE population
	MODIFY COLUMN y_2010 INT,
	MODIFY COLUMN y_2011 INT,
	MODIFY COLUMN y_2012 INT,
	MODIFY COLUMN y_2013 INT,
	MODIFY COLUMN y_2014 INT,
	MODIFY COLUMN y_2015 INT,
	MODIFY COLUMN y_2016 INT;

SELECT * FROM population LIMIT 25;