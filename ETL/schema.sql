-- create and use database
CREATE DATABASE IF NOT EXISTS etl_project;
USE etl_project;

-- create tables
CREATE TABLE housing_price (
	id INT AUTO_INCREMENT NOT NULL,
    state VARCHAR(30),
    `2010` DECIMAL(20,2),
    `2011` DECIMAL(20,2),
    `2012` DECIMAL(20,2),
    `2013` DECIMAL(20,2),
    `2014` DECIMAL(20,2),
    `2015` DECIMAL(20,2),
    `2016` DECIMAL(20,2),
    PRIMARY KEY (id)
);

CREATE TABLE population (
	id INT AUTO_INCREMENT NOT NULL,
    state VARCHAR(30),
    `2010` INT,
    `2011` INT,
    `2012` INT,
    `2013` INT,
    `2014` INT,
    `2015` INT,
    `2016` INT,
    PRIMARY KEY (id)
);

CREATE TABLE crime_rate (
	id INT AUTO_INCREMENT NOT NULL,
    state VARCHAR(30),
    `2010` DECIMAL(5,1),
    `2011` DECIMAL(5,1),
    `2012` DECIMAL(5,1),
    `2013` DECIMAL(5,1),
    `2014` DECIMAL(5,1),
    `2015` DECIMAL(5,1),
    `2016` DECIMAL(5,1),
    PRIMARY KEY (id)
);

CREATE TABLE crit_scores (
	id INT AUTO_INCREMENT NOT NULL,
    state VARCHAR(30),
    `2010` INT,
    `2011` INT,
    `2012` INT,
    `2013` INT,
    `2014` INT,
    `2015` INT,
    `2016` INT,
    PRIMARY KEY (id)
);

CREATE TABLE math_scores (
	id INT AUTO_INCREMENT NOT NULL,
    state VARCHAR(30),
    `2010` INT,
    `2011` INT,
    `2012` INT,
    `2013` INT,
    `2014` INT,
    `2015` INT,
    `2016` INT,
    PRIMARY KEY (id)
);