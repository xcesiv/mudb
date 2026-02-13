/* Brandon - Inserts */
INSERT INTO MUDB_USER (Username, Password, Role, Email) VALUES ('xcesiv','password123','Admin','xcesiv@github.com');

INSERT INTO ARTIST (DateOfBirth, Name) VALUES ('2003-01-01','All Time Low');

INSERT INTO ALBUM (ReleaseDate, Title, ArtistID) SELECT '2025-10-17','Everyone''s Talking!',ArtistID FROM ARTIST WHERE Name='All Time Low';

INSERT INTO SONG (Duration, Title, Username) VALUES (61,'[cold open]','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (159,'Everyone''s Talking','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (172,'SUCKERPUNCH','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (193,'Oh No!','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (171,'The Weather','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (200,'Falling For Strangers','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (205,'Viva Las Vagus Nerve','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (230,'Sugar','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (240,'Goodnight, Cest La Vie','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (180,'Bubblegum','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (175,'Little Bit','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (210,'Cigarettes and Sabotage','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (185,'Tread Water','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (190,'Different Languages','xcesiv');
INSERT INTO SONG (Duration, Title, Username) VALUES (198,'Butterflies','xcesiv');


INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 1 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='[cold open]';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 2 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Everyone''s Talking';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 3 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='SUCKERPUNCH';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 4 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Oh No!';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 5 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='The Weather';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 6 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Falling For Strangers';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 7 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Viva Las Vagus Nerve';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 8 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Sugar';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 9 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Goodnight, Cest La Vie';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 10 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Bubblegum';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 11 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Little Bit';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 12 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Cigarettes and Sabotage';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 13 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Tread Water';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 14 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Different Languages';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 15 FROM SONG s JOIN ALBUM a ON a.Title='Everyone''s Talking!' WHERE s.Title='Butterflies';

INSERT INTO FEATURES (ArtistID, SongID) SELECT ar.ArtistID, s.SongID FROM ARTIST ar JOIN SONG s ON ar.Name='All Time Low';

INSERT INTO SONG_GENRE (SongID, Genre) SELECT SongID,'Pop Punk' FROM SONG;

INSERT INTO SONG_LANGUAGE (SongID, Language) SELECT SongID,'English' FROM SONG;

INSERT INTO RATING (Score, Username, SongID) SELECT 5,'xcesiv',SongID FROM SONG WHERE Title='SUCKERPUNCH';
