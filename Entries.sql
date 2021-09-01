use DoctorWho;

INSERT INTO  Author
VALUES ('Ahmad'),
       ('Mohammad'),
	   ('Ali'),
	   ('Omar'),
	   ('Rami')

INSERT INTO Doctor
VALUES ('Lujain',05010105,'2000-06-26','2000-06-26','2000-06-26'),
       ('Aya',05501825,'1999-11-04','2000-06-26','2000-06-26'),
	   ('Noor',0113105,'2000-08-16','2000-06-26','2000-06-26'),
	   ('Raghad',0561812,'2001-07-11','2000-06-26','2000-06-26'),
	   ('Sara',0822141,'2004-12-15','2000-06-26','2000-06-26')

INSERT INTO Enemy
VALUES ('David','Kills everone'),
       ('Joe','Distroys the world'),
	   ('Yusuf','kill animals'),
	   ('Issac','has superpowers'),
	   ('Hazem','Theif')


INSERT INTO Episode
VALUES (5,14,'Action','Titans','2015-06-26',2,2,'Fiction')
	, (4,60,'Comedy','The Office','2003-12-06',3,null,'Non fiction')
	,(1,46,'Horror','Black Mirror','2018-08-15',1,4,'Sci-Fi')
	,(2,12,'Thriller','Prison Break','2007-11-20',5,null,'Non fiction')



INSERT INTO Companion
VALUES ('Sam','Muath'),
       ('Fatima','Jumana'),
	   ('Haya','Laith'),
	   ('Yazan','Manal'),
	   ('Abd','Majd')

INSERT INTO EpisodeEnemy
VALUES (1,2),
       (2,3),
	   (3,3),
	   (4,4)


INSERT INTO EpisodeCompanion
VALUES (2,1),
       (1,2),
	   (4,3),
	   (3,4)

INSERT INTO EpisodeCompanion
VALUES (2,2),
       (1,3),
	   (4,4),
	   (3,1)
