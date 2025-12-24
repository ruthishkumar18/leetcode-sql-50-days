SELECT R.contest_id,
       ROUND(COUNT(R.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register R
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id ASC;
