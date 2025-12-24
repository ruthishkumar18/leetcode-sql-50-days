# Day 18. Percentage of Users Attended a Contest

We are given two tables.

Users contains user_id and user_name.  
Register contains contest_id and user_id for registered users.

The task is to calculate the percentage of users registered in each contest.  
Percentage is (users registered / total users) * 100.  
The result should be rounded to two decimals.

We sort by percentage in descending order, then by contest_id ascending.
