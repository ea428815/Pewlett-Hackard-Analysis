SELECT * FROM film;

SELECT COUNT(film_id) AS "Total Films"
FROM film;

SELECT rating, COUNT(film_id) as "Total Films"
FROM film
GROUP BY rating;

SELECT AVG(rental_duration)
FROM film;

SELECT rental_duration, AVG(rental_rate) AS "Average rental rate"
FROM film
GROUP BY rental_duration;

SELECT rental_duration, MAX(rental_rate) AS "Max rental rate"
FROM film
GROUP BY rental_duration;

-- 1. What is the average cost to rent a film in the Sakila stores? ($2.98)
SELECT AVG(rental_rate)
FROM film;

-- 2. What is the average rental cost of films by rating? On average, what is the cheapest rating of films to rent? Most expensive?
SELECT rating, AVG(rental_rate)
FROM film
GROUP BY rating;

-- 3. How much would it cost to replace all the films in the database? ($19984.00)
SELECT SUM(replacement_cost)
FROM film;


-- 4. How much would it cost to replace all the films in each ratings category?
SELECT rating, SUM (replacement_cost)
FROM film
GROUP BY rating;

-- 5. How long is the longest movie in the database? The shortest?
SELECT MIN(length)
FROM film;

SELECT title, length
FROM film
WHERE length = (SELECT MAX(length) FROM film);

-- Select count of actors first names in descending order
SELECT * FROM actor limit 10;

SELECT first_name, COUNT(actor_id) total_actors
FROM actor
GROUP BY first_name
ORDER BY total_actors DESC;

-- Select the average duration of movies by rating
SELECT rating, AVG(length) as avg_length
FROM film
GROUP BY rating
ORDER BY rating;

-- Select top ten replace costs for the length of the movie
SELECT length, AVG(replacement_cost) AS "replacement_cost"
FROM film
GROUP BY length
ORDER BY AVG(replacement_cost) DESC
LIMIT 10;

--Select the count of cities in each country
SELECT country, COUNT(city) AS total_cities
FROM city AS cty
INNER JOIN country AS ctry
ON cty.country_id = ctry.country_id
GROUP BY country
ORDER BY total_cities DESC;

SELECT customer_id, inventory_id, rental_date
FROM rental
ORDER BY customer_id DESC, rental_id ASC;

SELECT DISTINCT customer_id, inventory_id, rental_date
FROM rental
ORDER BY rental_date;

SELECT DISTINCT customer_id, left(cast(rental_date as varchar), 10) day_of_rental
FROM rental
WHERE customer_id = 130
ORDER BY day_of_rental;

SELECT DISTINCT ON (customer_id) customer_id, rental_date
FROM rental
ORDER BY customer_id, rental_date DESC;



-- 1. Retreive the latest rental for each customer's first and last name and emial address. 
SELECT rental_id
FROM rental

-- 2. Retrieve the latest rental date for each title. 


-- Bonus:
-- Query 2 only returned 958 movies, which means 42 movies are not being rented. 
-- We know that there are 1,000 movies in the `film` table. 
-- Retrieve the film titles of the 42 movies that are not in the `inventory` table. 
