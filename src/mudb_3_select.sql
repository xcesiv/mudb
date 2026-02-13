/* Select Statements */

/* Average Rating Per Song Grouped by Album */
SELECT
  s.Title AS Song_Title,
  a.Title AS Album_Title,
  AVG(r.Score) AS Average_Rating
FROM RATING r
JOIN SONG s ON r.SongID = s.SongID
JOIN ALBUM a ON a.ArtistID = (
    SELECT ArtistID
    FROM ARTIST
    WHERE ARTIST.ArtistID = a.ArtistID
)
GROUP BY s.Title, a.Title;

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
