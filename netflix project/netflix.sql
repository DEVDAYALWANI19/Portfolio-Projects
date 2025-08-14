-- NETFLIX PROJECTS

--CREATING TABLE:
DROP TABLE IF EXISTS netflix;
CREATE TABLE netflix
(
	show_id	VARCHAR(5),
	type    VARCHAR(10),
	title	VARCHAR(250),
	director VARCHAR(550),
	casts	VARCHAR(1050),
	country	VARCHAR(550),
	date_added	VARCHAR(55),
	release_year	INT,
	rating	VARCHAR(15),
	duration	VARCHAR(15),
	listed_in	VARCHAR(250),
	description VARCHAR(550)
);

SELECT * FROM netflix;


SELECT distinct count(*) from netflix;


-- Netflix Data Analysis using SQL
-- Solutions of 15 business problems
-- 1. Count the number of Movies vs TV Shows
 
 SELECT type,
  	count(*)
	  from netflix 
	  group by 1;


-- 2. Find the most common rating for movies and TV shows

select type,	
		rating
from
(SELECT type,
	rating ,
	count(*),
	rank () over (partition by type order by count(*) desc) as rank
	from netflix
	group by 1,2
) as t1
where rank = 1;

-- 3. List all movies released in a specific year (e.g., 2020)
SELECT * from netflix 
where   release_year = '2020';


-- 4. Find the top 5 countries with the most content on Netflix

SELECT * 
FROM
	(
	SELECT 
	unnest(string_to_array(country,',')) as country,
	count(show_id) as total_content
	from netflix  
	group by 1
	) as t1
order by 2 desc
limit 5;


-- 5. Identify the longest movie

select *
from netflix
where type ='Movie'
and 
duration = (select max(duration) from netflix)


-- 6. Find content added in the last 5 years

select *
from netflix 
where 
	date_added::date >=current_date - interval '5year';


-- 7. Find all the movies/TV shows by director 'Rajiv Chilaka'!
select *
from netflix
where director ilike '%Rajiv Chilaka%'


-- 8. List all TV shows with more than 5 seasons

select * 
from netflix 
where type = 'TV Show'
and duration >='5 season';


-- 9. Count the number of content items in each genre

select  
	count(*) as totl_content, 
	unnest(string_to_array(listed_in,',')) as genre
from netflix
group by 2


-- 10. Find each year and the average numbers of content release by India on netflix. 
-- return top 5 year with highest avg content release !


select 
	 extract(year from to_date(date_added , 'Month,DD,YYYY')) AS year ,
		count(*),
		round(count(*)::numeric/(select count(*) from netflix where country  ilike '%india%')::numeric*100,2) as avg_content_releases_by_india
from  netflix 
where country ilike 'india'
group by 1
order by 3 DESC
limit 5;


-- 11. List all movies that are documentaries

select * 
from netflix
where listed_in ilike '%documentaries%'

-- 12. Find all content without a director

select * 
 from netflix
 where director is null;

 -- 13. Find how many movies actor 'Salman Khan' appeared in last 10 years!
select * 
	from netflix 
	where casts ilike '%salman khan%'
	AND 
	release_year > extract(year from date_added::date) - 10 



-- 14. Find the top 10 actors who have appeared in the highest number of movies produced in India.
select 
	unnest(string_to_array(casts, ',')) as actors,
	COUNT(*)
from netflix
where country = 'India'
GROUP BY 1
ORDER BY 2  DESC
LIMIT 10;


/*Question 15:
Categorize the content based on the presence of the keywords 'kill' and 'violence' in 
the description field. Label content containing these keywords as 'Bad' and all other 
content as 'Good'. Count how many items fall into each category.
*/

select 
	category,
	type ,
	count(*) as content_count
	FROM
		(select *,
				case
					when  description ilike '%kill%'
					OR
					description ilike '%voilence%' then 'BAD'
					else 'GOOD'
				end AS category
				from netflix
			) as categoriesed_content
				GROUP by 1,2
				order by 3;

	-- End of reports