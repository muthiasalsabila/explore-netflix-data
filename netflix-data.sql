--total movies and tv show in netflix
select count(title) from netflix;
SELECT count(type) FROM netflix
where type = "movie";
select count(type) * 100.00 / (select count(type) from netflix) 
from netflix
where type = "movie";
SELECT count(type) FROM netflix
where type = "tv show";
select count(type) * 100.00 / (select count(type) from netflix) 
from netflix
where type = "tv show";
--movies and tv show base on country
SELECT country, count(title) from netflix
GROUP BY country
ORDER BY count(title) DESC;

--top 10 netflix movies and tv show genre
SELECT listed_in, count(title) FROM netflix
GROUP BY listed_in
order by count(title) DESC
limit 10;

--netflix movies and tv show duration
SELECT duration, count(type) from netflix
where type = "movie"
GROUP BY duration
ORDER BY count(type) DESC;

SELECT duration, count(type) from netflix
where type = "tv show"
GROUP BY duration
ORDER BY count(type) DESC;

--netflix rating 
SELECT rating, count(title) from netflix
GROUP BY rating
ORDER BY count(title) desc;

-- netflix movies and tv show per year
SELECT release_year, count(title) from netflix
WHERE type = "movie"
GROUP BY release_year
ORDER BY release_year;

SELECT release_year, count(title) from netflix
WHERE type = "tv show"
GROUP BY release_year
ORDER BY release_year;