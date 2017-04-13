/*DELETES*/
DELETE FROM Artist;
DELETE FROM Album;
DELETE FROM Song;
DELETE FROM Genre;

/*DROP TABLES*/
DROP TABLE IF EXISTS Artist;
DROP TABLE IF EXISTS Album;
DROP TABLE IF EXISTS Song;
DROP TABLE IF EXISTS Genre;

/*Artist Table*/
CREATE TABLE Artist (
   ArtistId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   Label_Name TEXT NOT NULL,
   Artist_Name TEXT NOT NULL,
   Related_Rating INTEGER NOT NULL,
   Popularity_Rating INTEGER NOT NULL
);
/*ARTIST INSERTS*/
INSERT INTO Artist (ArtistId, Label_Name, Artist_Name, Related_Rating, Popularity_Rating)
VALUES (null, 'Epic Records', 'Framing Hanley', 5, 9);
INSERT INTO Artist VALUES (null, 'Equal Vision Records', 'Circa Survive', 20, 9);
INSERT INTO Artist VALUES (null, 'Photo Finish Records', 'Anthony Green', 18, 6);
INSERT INTO Artist VALUES (null, 'Saosin', 'Epitaph Records', 18, 6);
INSERT INTO Artist VALUES (null, 'Virgin Records', 'Poison The Well', 8, 7);

/*SELECTS*/
SELECT * FROM Artist;

/*Album Table*/
CREATE TABLE Album (
   AlbumId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   ArtistId INTEGER NOT NULL,
   CoverId INTEGER NOT NULL,
   Release_Date TEXT NOT NULL,
   Producer TEXT NOT NULL,
   Album_Name TEXT NOT NULL,
   FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId)
);

/*ALBUM INSERTS*/
INSERT INTO Album VALUES (null, 1, 1, '1/2/2013', 'Bob Jones', 'Along The Shadow');
INSERT INTO Album VALUES (null, 2, 2, '2/4/2014', 'Helana Nosrat', 'In Search of Solid Ground');
INSERT INTO Album VALUES (null, 3, 3, '4/13/2015', 'Ryan Belcher', 'Lolipop');
INSERT INTO Album VALUES (null, 4, 4, '4/2/2017', 'Dr. Dre', 'The Chronic');
INSERT INTO Album VALUES (null, 5, 5, '6/2/2012', 'Eminem', 'Come Close');

/*SELECTS*/
SELECT * FROM Artist;
SELECT * FROM Album;

/*GENRE TABLE*/
CREATE TABLE Genre (
GenreId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
Genre_Categories TEXT NOT NULL
);

/*GENRE INSERTS*/
INSERT INTO Genre VALUES (null, 'Pop');
INSERT INTO Genre VALUES (null, 'Rock');
INSERT INTO Genre VALUES (null, 'R & B');
INSERT INTO Genre VALUES (null, 'Classical');
INSERT INTO Genre VALUES (null, 'Jazz');

/*SELECTS*/
SELECT * FROM Genre;

/*SONG TABLE*/
CREATE TABLE Song (
   SongId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   Song_Length TEXT NOT NULL,
   Track_Number INTEGER NOT NULL,
   Lyrics TEXT NOT NULL,
   GenreId INTEGER NOT NULL,
    AlbumId INTEGER NOT NULL,
	FOREIGN KEY (GenreId) REFERENCES Genre(GenreId)
   FOREIGN KEY (AlbumId) REFERENCES Album(AlbumId)
);

/*SONG INSERTS*/
INSERT INTO Song VALUES (null, 10, 3, 10, 'Wahhhh Wahhh Wahh', 3343);
INSERT INTO Song VALUES (null, 6, 4, 8, 'Wahhhhh Even More', 3456);

/*SELECTS*/
SELECT * FROM Album;
SELECT * FROM Genre;
SELECT * FROM Song;

/*Final Select*/
SELECT * FROM Artist;
SELECT * FROM Album;
SELECT * FROM Genre;
SELECT * FROM Song;


/*COUNTS*/
SELECT COUNT(a.) NumberofArtists
From Artist a, Album al, Genre g, Song s
WHERE t.Name = 'Baseball'
AND t.ToyId = ct.ToyId
AND ct.ChildId = c.ChildId;



/*Populate One Table Using Another*/
INSERT INTO Album [(AlbumId, ArtistId, CoverId, Release_Date, Producer, Album_Name)] 
   SELECT Artist_Name
   FROM Artist
   [WHERE BLANK AND BLANK
   AND ];
   
   /*SQL EXPRESSIONS*/
SELECT column1, column2, columnN 
FROM table_name 
WHERE [CONDITION | EXPRESSION];

/**LIKE OPERATORS*/
/*Poplarity Rating*/
SELECT * FROM Artist
WHERE Popularity_Rating LIKE '%9%';