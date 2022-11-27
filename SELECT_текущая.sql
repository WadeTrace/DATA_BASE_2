SELECT g.name, count(executor_id) FROM genres_executor ge
JOIN genre g ON g.id = ge.genre_id 
GROUP BY g.name;

SELECT a.years, count(t.id) FROM album a   
JOIN track t ON a.id = t.album_id
WHERE a.years >= 2019 AND a.years <= 2020
GROUP BY a.years;

SELECT a.name, AVG(lenght) from album a 
JOIN track t ON a.id = t.album_id
GROUP BY a.name;


SELECT e.name, a.years from executor e
JOIN albums_executor ae ON e.id = ae.executor_id 
JOIN album a ON ae.album_id = a.id 
WHERE a.years != 2020;

SELECT DISTINCT c.name FROM collection c
JOIN collection_track ct ON c.id = ct.collection_id
JOIN track t ON ct.track_id = t.id 
JOIN album ON c.id = album.id  
JOIN albums_executor ae ON album.id = ae.album_id
JOIN executor e ON ae.executor_id = e.id
WHERE e.name LIKE 'Oxxxymiron';

SELECT a.name FROM album a
JOIN albums_executor ae ON a.id = ae.album_id
JOIN executor e ON ae.executor_id = e.id
JOIN genres_executor ge ON e.id = ge.executor_id
GROUP BY e.name, a.name
HAVING count(ge.genre_id) > 1; 

SELECT t.name FROM track t
LEFT JOIN collection_track ct ON t.id = ct.track_id
WHERE ct.track_id is NULL;

SELECT e.name, t.lenght FROM executor e
JOIN albums_executor ae ON e.id = ae.executor_id
JOIN album a ON ae.album_id = a.id
JOIN track t ON a.id = t.album_id
WHERE t.lenght IN (SELECT MIN(lenght) FROM track);


SELECT a.name, COUNT(*) FROM album a
JOIN track t ON a.id = t.album_id 
GROUP BY a.name 
HAVING COUNT(t.id) IN 
	(SELECT COUNT(*) FROM album a
	JOIN track t ON a.id = t.album_id
	GROUP BY a.name
	ORDER BY COUNT(*)
	LIMIT 1);


