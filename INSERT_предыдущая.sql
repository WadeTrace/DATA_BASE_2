INSERT INTO executor (id, name)
VALUES	(1, 'Oxxxymiron'),
		(2, 'Miyagi'),
		(3, 'Сектор Газа'),
		(4, 'Svetlanus'),
		(5, 'MC DEREVO'),
		(6, 'G'),
		(7, 'Slipknot'),
		(8, 'Igorek');

INSERT INTO genre (id, name)
VALUES  (1, 'Hip-Hop'),
		(2, 'Rap'),
		(3, 'Indi'),
		(4, 'Rock'),
		(5, 'Pop');

INSERT INTO genres_executor (executor_id, genre_id)
VALUES  (1, 1),
		(2, 1),
		(3, 4),
		(4, 5),
		(5, 5),
		(6, 3),
		(7, 4),
		(8, 1);
	

INSERT INTO album (id, name, years)
VALUES  (1, 'Hot', 2002),
		(2, 'Life', 2006),
		(3, 'DEREVNYA', 1995),
		(4, 'Cash', 2022),
		(5, 'My Cars', 2007),
		(6, 'Vagabunt', 2022),
		(7, 'Strasti', 2005),
		(8, 'I`am Best', 2003);
	

INSERT INTO track (id, name, lenght, album_id)
VALUES  (1, 'Oh my god', 3.21, 3),
		(2, 'Krik Dushi', 2.51, 7),
		(3, 'My life', 3.54, 5),
		(4, 'Selskiy Tualet', 4.31, 1),
		(5, 'Mashina vremeni', 2.01, 3),
		(6, 'Goryachi', 4.00, 6),
		(7, 'Seven Days', 3.59, 2),
		(8, 'God of War', 3.30, 8),
		(9, 'Cyber Shahlik', 4.03, 1),
		(10, 'Where do you live', 3.11, 7),
		(11, 'I love Shaurma', 3.40, 6),
		(12, 'God RAP', 2.55, 4),
		(13, 'Dikiy Kaban', 3.01, 4),
		(14, 'Ment', 5.00, 8),
		(15, 'Kabak', 3.25, 5),
		(16, 'Uter', 2.58, 2);
	
INSERT INTO albums_executor (executor_id, album_id)
VALUES  (1,6),
		(2,2),
		(3,3),
		(4,7),
		(5,8),
		(6,5),
		(7,1),
		(8,4);

INSERT INTO collection (id, name, years)
VALUES  (1, 'Live in Music', 2020),
		(2, 'Music live for me', 2018),
		(3, 'Zivi kak nikogda', 2008),
		(4, 'Derevenski shop', 2019),
		(5, 'Candy', 2015),
		(6, 'My cadilac', 2016),
		(7, 'Drova', 2010),
		(8, 'Makarov-TT', 2022);

INSERT INTO collection_track (track_id, collection_id)
VALUES  (1,3),
		(2,3),
		(3,6),
		(4,4),
		(5,1),
		(6,5),
		(7,2),
		(8,1),
		(9,7),
		(10,2),
		(11,8),
		(12,8),
		(13,2),
		(14,1),
		(15,6);
