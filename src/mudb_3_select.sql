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

