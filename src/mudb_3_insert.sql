/* Ro -Inserts */
INSERT INTO MUDB_USER (Username, Password, Role, Email) VALUES
('Ro', 'ilovemusic', 'admin', 'rbarrag2@asu.edu');


INSERT INTO ARTIST (DateOfBirth, Name) VALUES
('2016-01-01', 'Sleep Token');


INSERT INTO ALBUM (ReleaseDate, Title, ArtistID)
SELECT '2023-05-19', 'Take Me Back To Eden', ArtistID
FROM ARTIST
WHERE Name = 'Sleep Token';


INSERT INTO SONG (Duration, Title, Username) VALUES
(304, 'Chokehold', 'Ro'),
(395, 'The Summoning', 'Ro'),
(225, 'Granite', 'Ro'),
(236, 'Aqua Regia', 'Ro'),
(339, 'Vore', 'Ro'),
(428, 'Ascensionism', 'Ro'),
(306, 'Are You Really Okay?', 'Ro'),
(268, 'The Apparition', 'Ro'),
(240, 'DYWTYLM', 'Ro'),
(252, 'Rain', 'Ro'),
(500, 'Take Me Back To Eden', 'Ro'),
(313, 'Euclid', 'Ro');


INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 1
FROM SONG s, ALBUM a
WHERE s.Title = 'Chokehold'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 2
FROM SONG s, ALBUM a
WHERE s.Title = 'The Summoning'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 3
FROM SONG s, ALBUM a
WHERE s.Title = 'Granite'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 4
FROM SONG s, ALBUM a
WHERE s.Title = 'Aqua Regia'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 5
FROM SONG s, ALBUM a
WHERE s.Title = 'Vote'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 6
FROM SONG s, ALBUM a
WHERE s.Title = 'Ascensionism'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 7
FROM SONG s, ALBUM a
WHERE s.Title = 'Are You Really Okay'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 8
FROM SONG s, ALBUM a
WHERE s.Title = 'The Apparition'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 9
FROM SONG s, ALBUM a
WHERE s.Title = 'DYWTYLM'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 10
FROM SONG s, ALBUM a
WHERE s.Title = 'Rain'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 11
FROM SONG s, ALBUM a
WHERE s.Title = 'Take Me Back To Eden'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 12
FROM SONG s, ALBUM a
WHERE s.Title = 'Euclid'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO SONG_GENRE (SongID, Genre)
SELECT SongID, 'Alternative Metal'
FROM SONG;


INSERT INTO SONG_LANGUAGE (SongID, Language)
SELECT SongID, 'English'
FROM SONG;


INSERT INTO FEATURES (ArtistID, SongID)
SELECT a.ArtistID, s.SongID
FROM ARTIST a, SONG s
WHERE a.Name = 'Sleep Token';


INSERT INTO RATING (Score, Username, SongID)
SELECT 5, 'Ro', SongID
FROM SONG
WHERE Title IN ('Chokehold', 'The Summoning', 'Take Me Back To Eden');
