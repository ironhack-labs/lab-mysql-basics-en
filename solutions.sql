/* Challenge #1 - Who Published What At Where
Uses MySQLs SELECT query that joins mulitiple tables to figure out
what each author published at each publisher. Outcome is a data table.*/
USE Tables;

SELECT 
    a.au_id, 
    a.au_lname, 
    a.au_fname, 
    t.title AS title, 
    p.pub_name AS publisher
FROM authors AS a
INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
INNER JOIN titles AS t ON ta.title_id = t.title_id
INNER JOIN publishers AS p ON t.pub_id = p.pub_id
ORDER BY a.au_titleauthorlname ASC, t.title ASC;

/* Challenge #2 - Who Have Published How Many At Where
Queries how many titles each author has published at each publisher.*/
USE Tables;

SELECT 
    a.au_id, 
    a.au_lname, 
    a.au_fname, 
    p.pub_name AS publisher,
    COUNT(t.title_id) AS total_count
FROM authors AS a
INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
INNER JOIN titles AS t ON ta.title_id = t.title_id
INNER JOIN publishers AS p ON t.pub_id = p.pub_id
GROUP BY a.au_id, a.au_lname, a.au_fname, p.pub_name
ORDER BY a.au_lname ASC, p.pub_name ASC;

/* Challenge #3 - Best Selling Authors
Finds the top 3 authors who have sold the highest number of titles. */
USE Tables;

SELECT 
    a.au_id, 
    a.au_lname, 
    a.au_fname, 
	COUNT(ta.title_id) AS total_books
FROM authors AS a
INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
GROUP BY a.au_id, a.au_lname, a.au_fname
ORDER BY total_books DESC, au_lname ASC
LIMIT 3;

/* Challenge #4 - Best Selling Authors Ranking
Instead of the top 3, list all 23 authors including those with 0 titles.*/
USE Tables;

SELECT 
    a.au_id, 
    a.au_lname, 
    a.au_fname, 
    COALESCE(COUNT(ta.title_id), 0) AS total_books
FROM authors AS a
LEFT JOIN titleauthor AS ta ON a.au_id = ta.au_id
GROUP BY a.au_id, a.au_lname, a.au_fname
ORDER BY total_books DESC, a.au_lname ASC;

