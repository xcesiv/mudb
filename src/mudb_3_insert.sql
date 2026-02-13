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
WHERE s.Title = 'Vore'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 6
FROM SONG s, ALBUM a
WHERE s.Title = 'Ascensionism'
AND a.Title = 'Take Me Back To Eden';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 7
FROM SONG s, ALBUM a
WHERE s.Title = 'Are You Really Okay?'
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


INSERT INTO FEATURES (ArtistID, SongID)
SELECT a.ArtistID, s.SongID
FROM ARTIST a, SONG s
WHERE a.Name = 'Sleep Token';


INSERT INTO RATING (Score, Username, SongID)
SELECT 5, 'Ro', SongID
FROM SONG
WHERE Title IN ('Chokehold', 'The Summoning', 'Take Me Back To Eden');
=======
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

INSERT INTO RATING (Score, Username, SongID) SELECT 5,'xcesiv',SongID FROM SONG WHERE Title='SUCKERPUNCH';

/*Matthew's Inserts*/
INSERT INTO MUDB_USER (Username, Password, Role, Email)
VALUES ('mledlin','Password123', 'Admin', 'mledlin@asu.edu'),
		('bdhopper', 'easilyGuessed', 'User', 'bdhopper@asu.edu'),
        ('rlstein', 'gooseBumps98', 'User', 'rlstein@asu.edu'),
        ('jbhops', 'bunnyGirl23', 'User', 'jbhops@asu.edu'),
        ('tstark', 'IamIronMan', 'User', 'tstark@asu.edu');
INSERT INTO ARTIST (DateOfBirth, Name)
VALUES ('1989-06-07', 'Glass Animals'),
		( '1993-01-17', 'Matt Maeson'),
        ( '1985-10-10', 'Marina' ),
        ( '2001-01-04', 'Lola Young'),
        ( '1981-07-21', 'Paloma Faith');
INSERT INTO ALBUM (ReleaseDate, Title, ArtistID)
VALUES ('2022-10-26', 'Never Had to Leave',
(SELECT ArtistID
FROM ARTIST
WHERE Name = 'Matt Maeson' )),
('2024-07-19', 'I Love You So F***ing Much',
(SELECT ArtistID
FROM ARTIST
WHERE Name = 'Glass Animals' )),
('2012-04-27', 'Electra Heart',
(SELECT ArtistID
FROM ARTIST
WHERE Name = 'Marina' )),
('2024-06-21', 'This Wasnt Meant for You Anyway',
(SELECT ArtistID
FROM ARTIST
WHERE Name = 'Lola Young' )),
('2012-05-28', 'Fall To Grace',
(SELECT ArtistID
FROM ARTIST
WHERE Name = 'Paloma Faith' ));
INSERT INTO SONG (Duration, Title, Username)
VALUES (220, 'Blood Runs Red', 'mledlin'),
		(210, 'Never Had To Leave', 'mledlin'),
		(177, 'Cut Deep', 'mledlin'),
		(205, 'Lonely As You', 'mledlin'),
		(222, 'Cry Baby', 'mledlin'),
		(268, 'Nelsonwood Lane', 'mledlin'),
        (175, 'Twisted Tounge', 'mledlin'),
		(227, 'Problems', 'mledlin'),
        (220, 'Waltz Right In', 'mledlin'),
		(220, 'Sanctified', 'mledlin'),
        (220, 'A Memory Away', 'mledlin'),
		(220, 'My Hand', 'mledlin'),
	(255, 'Show Pony', 'mledlin'),
		(224, 'whatthehellishappening?', 'mledlin'),
		(222, 'Creatures in Heaven', 'mledlin'),
		(264, 'Wonderful Nothing', 'mledlin'),
		(203, 'A Tear In Space (Airlock)', 'mledlin'),
		(288, 'I Cant Make You Fall In Love Again', 'mledlin'),
        (249, 'How I Learned To Love The Bomb', 'mledlin'),
		(217, 'White Roses', 'mledlin'),
        (274, 'On The Run', 'mledlin'),
		(246, 'Lost In The Ocean', 'mledlin'),
	(154, 'Bubblegum Bitch', 'mledlin'),
		(221, 'Primadonna', 'mledlin'),
        (226, 'Lies', 'mledlin'),
		(202, 'Homewrecker', 'mledlin'),
		(207, 'Staring Role', 'mledlin'),
		(216, 'The State of Dreaming', 'mledlin'),
		(226, 'Power & Control', 'mledlin'),
		(244, 'Living Dead', 'mledlin'),
        (254, 'Teen Idle', 'mledlin'),
		(253, 'Valley of the Dolls', 'mledlin'),
        (241, 'Hypocrates', 'mledlin'),
		(367, 'Fear and Loathing', 'mledlin'),
	(199, 'Good Books', 'mledlin'),
		(222, 'Wish You Were Dead', 'mledlin'),
		(201, 'Big Brown Eyes', 'mledlin'),
		(188, 'Conceited', 'mledlin'),
		(227, 'Messy', 'mledlin'),
		(216, 'Walk On By', 'mledlin'),
		(213, 'You Noticed', 'mledlin'),
        (186, 'Crush', 'mledlin'),
		(208, 'F***', 'mledlin'),
        (184, 'Intrusive Thoughts', 'mledlin'),
		(243, 'Outro', 'mledlin'),
	(244, 'Picking Up the Pieces', 'mledlin'),
		(199, '30 Minute Love Affair', 'mledlin'),
		(242, 'Black & Blue', 'mledlin'),
		(277, 'Just Be', 'mledlin'),
		(167, 'Let Me Down Easy', 'mledlin'),
		(258, 'Blood, Sweat & Tears', 'mledlin'),
		(202, 'Beauty of the End', 'mledlin'),
		(255, 'When Youre Gone', 'mledlin'),
        (191, 'Agony', 'mledlin'),
		(263, 'Let Your Love Walk In', 'mledlin'),
        (200, 'Freedom', 'mledlin'),
        (199, 'Streets of Glory', 'mledlin');
INSERT INTO RATING (Score, Username, SongID)
	VALUES (5, 'bdhopper', (SELECT SongID
						FROM SONG
						WHERE Title = 'Cry Baby' )),
		(5, 'mledlin', (SELECT SongID
						FROM SONG
						WHERE Title = 'How I Learned To Love The Bomb' )),
         (4, 'rlstein', (SELECT SongID
						FROM SONG
						WHERE Title = 'Power & Control' )),
		(1, 'tstark', (SELECT SongID
						FROM SONG
						WHERE Title = 'Messy' ));

INSERT INTO CONTAINS (SongID,AlbumID,TrackNumber)
VALUES ((SELECT SongID
		FROM SONG
        WHERE Title = 'Blood Runs Red'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 1),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Never Had To Leave'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 2),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Cut Deep'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 3),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Lonely As You'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 4),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Cry Baby'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 5),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Nelsonwood Lane'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 6),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Twisted Tounge'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 7),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Problems'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 8),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Waltz Right In'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 9),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Sanctified'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 10),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'A Memory Away'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 11),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'My Hand'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Never Had to Leave'), 12),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Show Pony'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'I Love You So F***ing Much'), 1),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'whatthehellishappening?'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'I Love You So F***ing Much'), 2),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Creatures in Heaven'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'I Love You So F***ing Much'), 3),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Wonderful Nothing'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'I Love You So F***ing Much'), 4),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'A Tear In Space (Airlock)'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'I Love You So F***ing Much'), 5),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'I Cant Make You Fall In Love Again'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'I Love You So F***ing Much'), 6),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'How I Learned To Love The Bomb'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'I Love You So F***ing Much'), 7),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'White Roses'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'I Love You So F***ing Much'), 8),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'On The Run'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'I Love You So F***ing Much'), 9),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Lost In The Ocean'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'I Love You So F***ing Much'), 10),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Bubblegum Bitch'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 1),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Primadonna'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 2),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Lies'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 3),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Homewrecker'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 4),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Staring Role'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 5),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'The State of Dreaming'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 6),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Power & Control'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 7),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Living Dead'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 8),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Teen Idle'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 9),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Valley of the Dolls'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 10),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Hypocrates'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 11),
		((SELECT SongID
        FROM SONG
        WHERE Title = 'Fear and Loathing'),
        (SELECT AlbumID
        FROM ALBUM
        WHERE Title = 'Electra Heart'), 12),
        ((SELECT SongID
          FROM SONG
          WHERE Title = 'Good Books'),
         (SELECT AlbumID
          FROM ALBUM
          WHERE Title = 'This Wasnt Meant for You Anyway'), 1),
        ((SELECT SongID
          FROM SONG
          WHERE Title = 'Wish You Were Dead'),
         (SELECT AlbumID
          FROM ALBUM
          WHERE Title = 'This Wasnt Meant for You Anyway'), 2),
        ((SELECT SongID
          FROM SONG
          WHERE Title = 'Big Brown Eyes'),
         (SELECT AlbumID
          FROM ALBUM
          WHERE Title = 'This Wasnt Meant for You Anyway'), 3),
        ((SELECT SongID
          FROM SONG
          WHERE Title = 'Conceited'),
         (SELECT AlbumID
          FROM ALBUM
          WHERE Title = 'This Wasnt Meant for You Anyway'), 4),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Messy'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'This Wasnt Meant for You Anyway'), 5),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Walk On By'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'This Wasnt Meant for You Anyway'), 6),
((SELECT SongID
  FROM SONG
  WHERE Title = 'You Noticed'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'This Wasnt Meant for You Anyway'), 7),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Crush'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'This Wasnt Meant for You Anyway'), 8),
((SELECT SongID
  FROM SONG
  WHERE Title = 'F***'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'This Wasnt Meant for You Anyway'), 9),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Intrusive Thoughts'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'This Wasnt Meant for You Anyway'), 10),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Outro'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'This Wasnt Meant for You Anyway'), 11),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Picking Up the Pieces'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 1),
((SELECT SongID
  FROM SONG
  WHERE Title = '30 Minute Love Affair'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 2),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Black & Blue'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 3),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Just Be'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 4),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Let Me Down Easy'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 5),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Blood, Sweat & Tears'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 6),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Beauty of the End'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 7),
((SELECT SongID
  FROM SONG
  WHERE Title = 'When Youre Gone'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 8),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Agony'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 9),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Let Your Love Walk In'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 10),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Freedom'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 11),
((SELECT SongID
  FROM SONG
  WHERE Title = 'Streets of Glory'),
 (SELECT AlbumID
  FROM ALBUM
  WHERE Title = 'Fall To Grace'), 12);

INSERT INTO SONG_GENRE (SongID, Genre) VALUES
((SELECT SongID FROM SONG WHERE Title = 'Blood Runs Red'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Blood Runs Red'), 'Indie'),
((SELECT SongID FROM SONG WHERE Title = 'Never Had To Leave'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Never Had To Leave'), 'Indie Rock'),
((SELECT SongID FROM SONG WHERE Title = 'Cut Deep'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Cut Deep'), 'Rock'),
((SELECT SongID FROM SONG WHERE Title = 'Lonely As You'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Lonely As You'), 'Indie'),
((SELECT SongID FROM SONG WHERE Title = 'Cry Baby'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Cry Baby'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Nelsonwood Lane'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Nelsonwood Lane'), 'Singer-Songwriter'),
((SELECT SongID FROM SONG WHERE Title = 'Twisted Tounge'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Twisted Tounge'), 'Rock'),
((SELECT SongID FROM SONG WHERE Title = 'Problems'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Problems'), 'Indie'),
((SELECT SongID FROM SONG WHERE Title = 'Waltz Right In'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Waltz Right In'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Sanctified'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Sanctified'), 'Rock'),
((SELECT SongID FROM SONG WHERE Title = 'A Memory Away'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'A Memory Away'), 'Indie'),
((SELECT SongID FROM SONG WHERE Title = 'My Hand'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'My Hand'), 'Singer-Songwriter'),
((SELECT SongID FROM SONG WHERE Title = 'Show Pony'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Show Pony'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'whatthehellishappening?'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'whatthehellishappening?'), 'Psychedelic Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Creatures in Heaven'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Creatures in Heaven'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Wonderful Nothing'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Wonderful Nothing'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'A Tear In Space (Airlock)'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'A Tear In Space (Airlock)'), 'Electronic'),
((SELECT SongID FROM SONG WHERE Title = 'I Cant Make You Fall In Love Again'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'I Cant Make You Fall In Love Again'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'How I Learned To Love The Bomb'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'How I Learned To Love The Bomb'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'White Roses'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'White Roses'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'On The Run'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'On The Run'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Lost In The Ocean'), 'Indie Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Lost In The Ocean'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Bubblegum Bitch'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Bubblegum Bitch'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Primadonna'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Primadonna'), 'Dance Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Lies'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Lies'), 'Synthpop'),
((SELECT SongID FROM SONG WHERE Title = 'Homewrecker'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Homewrecker'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Staring Role'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Staring Role'), 'Synthpop'),
((SELECT SongID FROM SONG WHERE Title = 'The State of Dreaming'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'The State of Dreaming'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Power & Control'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Power & Control'), 'Dance Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Living Dead'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Living Dead'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Teen Idle'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Teen Idle'), 'Synthpop'),
((SELECT SongID FROM SONG WHERE Title = 'Valley of the Dolls'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Valley of the Dolls'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Hypocrates'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Hypocrates'), 'Synthpop'),
((SELECT SongID FROM SONG WHERE Title = 'Fear and Loathing'), 'Electropop'),
((SELECT SongID FROM SONG WHERE Title = 'Fear and Loathing'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Good Books'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Good Books'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Wish You Were Dead'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Wish You Were Dead'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Big Brown Eyes'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Big Brown Eyes'), 'Soul Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Conceited'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Conceited'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Messy'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Messy'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Walk On By'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Walk On By'), 'Soul Pop'),
((SELECT SongID FROM SONG WHERE Title = 'You Noticed'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'You Noticed'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Crush'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Crush'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'F***'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'F***'), 'Alternative Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Intrusive Thoughts'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Intrusive Thoughts'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Outro'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Outro'), 'Alternative'),
((SELECT SongID FROM SONG WHERE Title = 'Picking Up the Pieces'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Picking Up the Pieces'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = '30 Minute Love Affair'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = '30 Minute Love Affair'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = 'Black & Blue'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Black & Blue'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = 'Just Be'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Just Be'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = 'Let Me Down Easy'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Let Me Down Easy'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = 'Blood, Sweat & Tears'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Blood, Sweat & Tears'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = 'Beauty of the End'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Beauty of the End'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = 'When Youre Gone'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'When Youre Gone'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = 'Agony'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Agony'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = 'Let Your Love Walk In'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Let Your Love Walk In'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = 'Freedom'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Freedom'), 'Soul'),
((SELECT SongID FROM SONG WHERE Title = 'Streets of Glory'), 'Pop'),
((SELECT SongID FROM SONG WHERE Title = 'Streets of Glory'), 'Soul');

INSERT INTO FEATURES (ArtistID, SongID)
VALUES
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'Blood Runs Red')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'Never Had To Leave')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'Cut Deep')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'Lonely As You')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'Cry Baby')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'Nelsonwood Lane')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'Twisted Tounge')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'Problems')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'Waltz Right In')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'Sanctified')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'A Memory Away')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Matt Maeson'), (SELECT SongID FROM SONG WHERE Title = 'My Hand')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Glass Animals'), (SELECT SongID FROM SONG WHERE Title = 'Show Pony')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Glass Animals'), (SELECT SongID FROM SONG WHERE Title = 'whatthehellishappening?')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Glass Animals'), (SELECT SongID FROM SONG WHERE Title = 'Creatures in Heaven')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Glass Animals'), (SELECT SongID FROM SONG WHERE Title = 'Wonderful Nothing')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Glass Animals'), (SELECT SongID FROM SONG WHERE Title = 'A Tear In Space (Airlock)')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Glass Animals'), (SELECT SongID FROM SONG WHERE Title = 'I Cant Make You Fall In Love Again')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Glass Animals'), (SELECT SongID FROM SONG WHERE Title = 'How I Learned To Love The Bomb')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Glass Animals'), (SELECT SongID FROM SONG WHERE Title = 'White Roses')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Glass Animals'), (SELECT SongID FROM SONG WHERE Title = 'On The Run')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Glass Animals'), (SELECT SongID FROM SONG WHERE Title = 'Lost In The Ocean')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Bubblegum Bitch')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Primadonna')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Lies')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Homewrecker')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Staring Role')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'The State of Dreaming')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Power & Control')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Living Dead')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Teen Idle')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Valley of the Dolls')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Hypocrates')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Marina'), (SELECT SongID FROM SONG WHERE Title = 'Fear and Loathing')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'Good Books')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'Wish You Were Dead')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'Big Brown Eyes')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'Conceited')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'Messy')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'Walk On By')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'You Noticed')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'Crush')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'F***')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'Intrusive Thoughts')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Lola Young'), (SELECT SongID FROM SONG WHERE Title = 'Outro')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'Picking Up the Pieces')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = '30 Minute Love Affair')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'Black & Blue')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'Just Be')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'Let Me Down Easy')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'Blood, Sweat & Tears')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'Beauty of the End')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'When Youre Gone')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'Agony')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'Let Your Love Walk In')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'Freedom')),
((SELECT ArtistID FROM ARTIST WHERE Name = 'Paloma Faith'), (SELECT SongID FROM SONG WHERE Title = 'Streets of Glory'));

/*Jenny's Inserts*/
INSERT INTO MUDB_USER (Username, Password, Role, Email) VALUES ('jburkmier','jburkmierPassword321','User','jburkmier@github.com');

INSERT INTO ARTIST (DateOfBirth, Name) VALUES ('1972-11-11','ABBA');

INSERT INTO ALBUM (ReleaseDate, Title, ArtistID) SELECT '2007-12-12','ABBA: The Album Deluxe',ArtistID FROM ARTIST WHERE Name='ABBA';

INSERT INTO SONG (Duration, Title, Username) VALUES (265,'Eagle','jburkmier');
INSERT INTO SONG (Duration, Title, Username) VALUES (265,'Take a Chance on Me','jburkmier');
INSERT INTO SONG (Duration, Title, Username) VALUES (243,'Thank You for the Music','jburkmier');
INSERT INTO SONG (Duration, Title, Username) VALUES (283,'Al andar','jburkmier');
INSERT INTO SONG (Duration, Title, Username) VALUES (267,'I Wonder(Departure)','jburkmier');
INSERT INTO SONG (Duration, Title, Username) VALUES (229,'Gracias por la Musica','jburkmier');

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 1 FROM SONG s JOIN ALBUM a ON a.Title='ABBA: The Ablum Deluxe' WHERE s.Title='Eagle';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 1 FROM SONG s JOIN ALBUM a ON a.Title='ABBA: The Ablum Deluxe' WHERE s.Title='Take a Chance on Me';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 1 FROM SONG s JOIN ALBUM a ON a.Title='ABBA: The Ablum Deluxe' WHERE s.Title='Thank You for the Music';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 1 FROM SONG s JOIN ALBUM a ON a.Title='ABBA: The Ablum Deluxe' WHERE s.Title='Al andar';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 1 FROM SONG s JOIN ALBUM a ON a.Title='ABBA: The Ablum Deluxe' WHERE s.Title='I Wonder(Departure)';

INSERT INTO CONTAINS (SongID, AlbumID, TrackNumber)
SELECT s.SongID, a.AlbumID, 1 FROM SONG s JOIN ALBUM a ON a.Title='ABBA: The Ablum Deluxe' WHERE s.Title='Gracias por la Musica';

INSERT INTO FEATURES (ArtistID, SongID) SELECT ar.ArtistID, s.SongID FROM ARTIST ar JOIN SONG s ON ar.Name='ABBA';

INSERT INTO SONG_GENRE (SongID, Genre) SELECT SongID,'Dance Rock' FROM SONG;

INSERT INTO RATING (Score, Username, SongID) SELECT 5,'jburkmier',SongID FROM SONG WHERE Title='Take a Chance on Me';


/*Brandon's moved here to assign all songs English: IF you have a song that is not in English, place it below this when you merege*/
INSERT INTO SONG_LANGUAGE (SongID, Language) SELECT SongID,'English' FROM SONG;

INSERT INTO SONG_LANGUAGE(SongID, Language) SELECT SongID, 'Spanish' WHERE Title ='Gracias por la Musica';
INSERT INTO SONG_LANGUAGE(SongID, Language) SELECT SongID, 'Spanish' WHERE Title ='Al andar';
