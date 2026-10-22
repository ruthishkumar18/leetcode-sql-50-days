WITH daily AS (
    SELECT visited_on,
           SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
),

moving AS (
    SELECT d1.visited_on,
           (SELECT SUM(d2.amount)
            FROM daily d2
            WHERE d2.visited_on BETWEEN DATE_SUB(d1.visited_on, INTERVAL 6 DAY)
                                   AND d1.visited_on) AS total_amount
    FROM daily d1
)

SELECT visited_on,
       total_amount AS amount,
       ROUND(total_amount / 7, 2) AS average_amount
FROM moving
WHERE visited_on >= (
    SELECT MIN(visited_on) + INTERVAL 6 DAY
    FROM daily
)
ORDER BY visited_on;
