SELECT DATE_FORMAT(payment_date,'%Y'-'%m') AS YearMonth,
SUM(amount) AS TotalRevenue
FROM payment
GROUP BY YearMonth 
ORDER BY YearMonth;