/* Users who have added Genre 'Pop' songs */
SELECT DISTINCT U.Username
FROM MUDB_USER U
JOIN SONG S ON U.Username = S.Username
JOIN SONG_GENRE SG ON S.SongID = SG.SongID
WHERE SG.Genre = 'Pop';

/* View All Users */
SELECT Username, Role, Email
FROM MUDB_USER;

/* Count number of songs per Genre */
SELECT sg.Genre, COUNT(sg.SongID) AS TotalSongs
FROM SONG_GENRE sg
GROUP BY sg.Genre
ORDER BY TotalSongs DESC;

/* Select Statements */

/* Average Rating Per Song Grouped by Album */
SELECT
  s.Title AS Song_Title,
  a.Title AS Album_Title,
  AVG(r.Score) AS Average_Rating
FROM RATING r
JOIN SONG s ON r.SongID = s.SongID
JOIN CONTAINS c ON c.SongID = s.SongID
JOIN ALBUM a ON a.AlbumID = c.AlbumID
GROUP BY s.SongID, s.Title, a.AlbumID, a.Title
ORDER BY a.Title, s.Title;

/* Albums Released Per Year */
SELECT
  YEAR(a.ReleaseDate) AS Release_Year,
  COUNT(*) AS Number_Of_Albums_Released
FROM ALBUM a
GROUP BY YEAR(a.ReleaseDate)
ORDER BY Release_Year DESC;

/* Average Rating Given By User and Total Ratings Given */
SELECT
  r.Username AS User_Name,
  COUNT(r.RatingID) AS Number_Of_Ratings_Given,
  ROUND(AVG(r.Score), 2) AS Average_Rating_Given
FROM RATING r
GROUP BY r.Username
ORDER BY Average_Rating_Given DESC;

/*Select all artist that are over thirty*/
SELECT Name, DateOfBirth
FROM ARTIST
WHERE DateOfBirth < '1996-02-12';

/*Select all artist that have with a song less than 170 seconds*/
SELECT DISTINCT A.Name
FROM (ARTIST AS A JOIN FEATURES AS F ON A.ArtistID = F.ArtistID) JOIN SONG AS S ON ( F.SongID = S.SongID)
WHERE S.Duration < 170;

/*What is the name and duration of the Artist that has the longest song*/
SELECT A.Name, S.Duration
FROM (ARTIST AS A JOIN FEATURES AS F ON A.ArtistID = F.ArtistID) JOIN SONG AS S ON ( F.SongID = S.SongID)
WHERE S.Duration = (Select MAX(SONG.Duration)
                    From SONG);

/*Select all song titles that in are Spanish*/
SELECT s.Title
FROM SONG s
JOIN SONG_LANGUAGE sl ON sl.SongID = s.SongID
WHERE sl.Language = 'Spanish';

/*Select all songID and song titles in Alternative Metal genre */
SELECT s.Title, s.SongID
FROM SONG s
JOIN SONG_GENERE sg ON sg.SongID = s.SongID
WHERE sg.Genre = 'Alternative Metal';

/*Select all English songs with ratings above 3*/
SELECT s.Title
FROM SONG s
JOIN RATING r ON s.SongID = r.SongID
JOIN SONG_LANGUAGE sl ON sl.SongID = s.SongID
WHERE sl.Language = 'English'AND r.Score > 3;
