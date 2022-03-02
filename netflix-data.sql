/*THIS FILE CONTAINS DATA EXPLORATION USING SQL
SOURCE: https://www.kaggle.com/shivamb/netflix-shows
DATA VIZ TABLEAU: https://public.tableau.com/views/Netflix_16459621857470/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link*/

--TOTAL MOVIES AND TV SHOW IN NETFLIX
select count(title) from netflix;

--TOTAL MOVIES IN NETFLIX
SELECT count(type) FROM netflix
where type = "movie";

--MOVIES PERCENTAGE FROM TOTAL PROGRAM IN NETFLIX
select count(type) * 100.00 / (select count(type) from netflix) 
from netflix
where type = "movie";

--TOTAL TV SHOW IN NETFLIX
SELECT count(type) FROM netflix
where type = "tv show";

--TV SHOW PERCENTAGE FROM TOTAL PROGRAM IN NETFLIX
select count(type) * 100.00 / (select count(type) from netflix) 
from netflix
where type = "tv show";

--TOTAL NETFLIX MOVIES AND TV SHOW BASED ON COUNTRY
SELECT country, count(title) from netflix
GROUP BY country
ORDER BY count(title) DESC;

--TOP 10 NETFLIX MOVIES AND TV SHOW
SELECT listed_in, count(title) FROM netflix
GROUP BY listed_in
order by count(title) DESC
limit 10;

--NETFLIX MOVIES DURATION FROM LONGEST TO SHORTEST
SELECT duration, count(type) from netflix
where type = "movie"
GROUP BY duration
ORDER BY count(type) DESC;

--NETFLIX TV SHOW DURATION FROM LONGEST TO SHORTEST
SELECT duration, count(type) from netflix
where type = "tv show"
GROUP BY duration
ORDER BY count(type) DESC;

--NETFLIX RATING RANK
SELECT rating, count(title) from netflix
GROUP BY rating
ORDER BY count(title) desc;

--TOTAL NETFLIX MOVIE BASED ON YEAR RELEASE 
SELECT release_year, count(title) from netflix
WHERE type = "movie"
GROUP BY release_year
ORDER BY release_year;

--TOTAL TV SHOW BASED ON YEAR RELEASE
SELECT release_year, count(title) from netflix
WHERE type = "tv show"
GROUP BY release_year
ORDER BY release_year;
