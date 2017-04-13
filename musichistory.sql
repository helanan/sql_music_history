SELECT * FROM Genre

SELECT * FROM Artist
SELECT ArtistId from Artist
SELECT ArtistName from Artist
SELECT YearEstablished from Artist

SELECT * FROM Album
SELECT AlbumId from Album
SELECT Title FROM Album
SELECT ReleaseDate FROM Album
SELECT AlbumLength FROM Album
SELECT Label FROM Album
SELECT ArtistId FROM Album
SELECT GenreId FROM Album

SELECT * FROM Song
SELECT Title From Song
SELECT SongLength From Song
SELECT ReleaseDate From Song
SELECT GenreId From Song
SELECT ArtistId From Song
SELECT AlbumId From Song

INSERT INTO Artist (ArtistId, ArtistName, YearEstablished)
VALUES (28, 'Thrice', '1992');

INSERT INTO Album (AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES (24, 'The Artist In the Ambulance', '3/20/2012', 2356, 'Fueld By Ramen', 28, 9);

INSERT INTO Album (AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES (25, 'Vheissu', '6/3/2005', 3758, 'Fueld By Ramen', 28, 9);

INSERT INTO Song (SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES (22, 'Artist in the Ambulance', 300, '3/20/2012', 9, 28, 24);

INSERT INTO Song (SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES (23, 'Stare At the Sun', 345, '3/20/2012', 9, 28, 24);

INSERT INTO Album (AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES (23, 'The Sum of Who We Are', '5/23/2011', 2345, 'Epic Records', 29, 9);

SELECT column_name(s)
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;

SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;


SELECT ArtistId, ArtistName
FROM Artist
WHERE ArtistName = 'Jay Z' OR ArtistName = 'David Bowie';

SELECT ArtistName, YearEstablished
FROM Artist
ORDER BY YearEstablished, ArtistName ASC;

UPDATE Artist
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;


