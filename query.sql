DROP TABLE netflix;
DROP TABLE disney_plus;

CREATE TABLE netflix (
id INT,
title TEXT PRIMARY KEY,
director TEXT,
movie_cast TEXT,
country TEXT,
release_year INT
);

CREATE TABLE disney_plus (
id INT,
title TEXT PRIMARY KEY,
director TEXT,
movie_cast TEXT,
country TEXT,
release_year INT
);

select * from netflix
select * from disney_plus