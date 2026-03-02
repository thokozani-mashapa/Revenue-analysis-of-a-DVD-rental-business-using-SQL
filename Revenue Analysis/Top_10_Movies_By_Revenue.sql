SELECT f.title AS FilmTitle,
SUM(p.amount) AS TotalRevenue
FROM payment p 
INNER JOIN rental r 
ON p.rental_id = r.rental_id 
INNER JOIN inventory i 
ON r.inventory_id = i.inventory_id 
INNER JOIN film f 
ON i.film_id = f.film_id 
GROUP BY f.title 
ORDER BY TotalRevenue DESC
LIMIT 10;