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
