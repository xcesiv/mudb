/* Users who have added Genre 'Pop' songs */
SELECT DISTINCT U.Username
FROM MUDB_USER U
JOIN SONG S ON U.Username = S.Username
JOIN SONG_GENRE SG ON S.SongID = SG.SongID
WHERE SG.Genre = 'Pop';

