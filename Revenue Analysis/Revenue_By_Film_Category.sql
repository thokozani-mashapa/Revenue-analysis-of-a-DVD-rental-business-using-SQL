SELECT c.name AS CategoryName,
SUM(p.amount) AS TotalRevenue
FROM payment p
INNER JOIN rental r
ON p.rental_id = r.rental_id 
INNER JOIN inventory i 
ON r.inventory_id = i.inventory_id
INNER JOIN film f 
ON i.film_id = f.film_id 
INNER JOIN film_category fc 
ON f.film_id = fc.film_id 
INNER JOIN category c 
ON fc.category_id = c.category_id 
GROUP BY c.name 
ORDER BY TotalRevenue DESC;