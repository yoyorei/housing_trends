-- query to check successful loads
SELECT * FROM population;
SELECT * FROM housing_price;
SELECT * FROM crime_rate;
SELECT * FROM crit_scores;
SELECT * FROM math_scores;

-- join tables on shared id for state
SELECT *
FROM population INNER JOIN housing_price
	ON population.id = housing_price.id
INNER JOIN crime_rate
	ON housing_price.id = crime_rate.id
INNER JOIN crit_scores
	ON crime_rate.id = crit_scores.id
INNER JOIN math_scores
	ON crit_scores.id = math_scores.id
LIMIT 25;