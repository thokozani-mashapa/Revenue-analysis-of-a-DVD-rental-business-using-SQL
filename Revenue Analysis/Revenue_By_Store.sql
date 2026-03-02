SELECT s.store_id, SUM(p.amount) AS TotalRevenue
FROM payment p 
INNER JOIN staff s 
ON p.staff_id = s.staff_id
INNER JOIN store s2 
ON s.store_id  = s2.store_id 
GROUP BY s2.store_id 
ORDER BY TotalRevenue DESC;