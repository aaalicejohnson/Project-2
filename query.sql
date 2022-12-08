DROP TABLE if exists netflix;
DROP TABLE if exists disney_plus;
DROP TABLE if exists all_movies;

CREATE TABLE netflix (
id INT,
title TEXT PRIMARY KEY,
director TEXT,
movie_cast TEXT,
country TEXT,
release_year INT,
rating VARCHAR);

CREATE TABLE disney_plus (
id INT,
title TEXT PRIMARY KEY,
director TEXT,
movie_cast TEXT,
country TEXT,
release_year INT,
rating VARCHAR
);

CREATE TABLE all_movies(
id INT, 
title TEXT PRIMARY KEY,
director TEXT, 
movie_cast TEXT, 
country TEXT, 
release_year INT, 
rating VARCHAR,
budget FLOAT, 
revenue FLOAT, 
runtime FLOAT, 
movie_id INT, 
genre TEXT, 
streaming VARCHAR);

select * from netflix;
select * from disney_plus;
select * from all_movies;