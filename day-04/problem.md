# Day 4 — Article Views I

We are given a Views table with the following columns  
- article_id  
- author_id  
- viewer_id  
- view_date  

Each row shows that a viewer viewed an article written by an author.  
If author_id and viewer_id are the same, it means the author viewed their own article.

The task is to find all authors who viewed at least one of their own articles.  
The result should be sorted in ascending order.
