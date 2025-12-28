SELECT
    ROUND(
        COUNT(DISTINCT A.player_id) * 1.0 /
        (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) AS fraction
FROM Activity A
JOIN (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) F
ON A.player_id = F.player_id
AND A.event_date = DATE_ADD(F.first_login, INTERVAL 1 DAY);
