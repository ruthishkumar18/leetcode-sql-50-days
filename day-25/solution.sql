SELECT S.product_id,
       S.year AS first_year,
       S.quantity,
       S.price
FROM Sales S
JOIN (
    SELECT product_id, MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
) F
ON S.product_id = F.product_id
AND S.year = F.first_year;
