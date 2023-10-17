--looking at all records
SELECT * FROM movies_data;

--looking at Movies data based on highesh revenue
SELECT * FROM movies_data 
ORDER BY Revenue DESC;

--looking at Movies data based on Highest vote count which is greates than 5000 having English language
SELECT * FROM movies_data 
WHERE Original Language = "en" AND Vote Average > 5000  
ORDER BY Vote Count DESC;

--show which Runtime category generates the most average revenue for movies and Rename result column.
SELECT Title,AVG(Revenue) AS avg_revenue 
FROM movies_data 
GROUP BY Title 
ORDER BY avg_revenue DESC;

--calculate the total population of each continent.
SELECT Title,SUM(Revenue) AS total_revenue 
FROM movies_data 
GROUP BY Title 
ORDER BY total_revenue DESC;

-- select the 5 highest rated movies according to this Popularity metric.
SELECT * FROM movies_data 
ORDER BY Popularity DESC;

--looking at Revenue vs Budget
Select Title, Popularity, (CONVERT(DECIMAL, Revenue) / CONVERT(DECIMAL, Budget) )*100 as revenue_percentage
from movies_data
order by 1,2;