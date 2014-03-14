drop table if exists pistes;
drop table if exists lifts;

CREATE TABLE pistes
(
	piste varchar(30) primary key,
	grade varchar(9),
	length varchar(3),
	fall varchar(4),
	lifts text,
	open varchar(3)
);

INSERT INTO pistes (piste, grade, length, fall, lifts, open) VALUES

	('Zwischenholzabfahrt', 'medium', 3, 440, 'Schoenjochbahn I and ESL-Fiss-Moeseralm' , 'yes'),
	('Moeseralmabfahrt', 'medium', 2.5, 400, 'ESL-Fiss-Moeseralm and Rastlift', 'no'),
	('Schoenjochabfahrt', 'medium', 4, 510, 'Schoenjochbahn II and Plazoerlift and Schoenjochlift', 'yes'), 	
	('Sattelkopf-Suedabfahrt', 'medium', 4, 350, 'Waldlift  and Sattelkopflift', 'yes'), 
	('Sattelkopf-Nordabfahrt', 'difficult', 1.5, 220, 'Sattelkopflift', 'yes'), 
	('Moeserabfahrt', 'easy', 0.5, 80, 'Moeserlift', 'yes'),
	('Wonneabfahrt', 'medium', 1.5, 280, 'Schoenjochbahn I and Wonnelift', 'no'), 
	('Rastabfahrt', 'medium', 1, 150, 'Rastlift', 'no'), 
	('Waldabfahrt', 'hard', 3, 420, 'Waldlift', 'yes'),
	('Ladisabfahrt', 'easy', 3.5, 290, 'ESL-Ladis-Fiss', 'yes'),
	('Verbindungsabfahrt', 'easy', 2, 70, 'Schoenjochbahn I and Wonnelift', 'yes'),
	('Plazoerabfahrt', 'medium', 3, 360, 'Schoenjochbahn II and Plazoerlift', 'no'),
	('Schoengampabfahrt', 'medium', 3.5, 420, 'Schoengamplift', 'yes'),
	('Schoenjochpiste', 'easy', 1, 70, 'Schoenjochbahn II and Plazoerlift', 'yes'),
	('Almabfahrt', 'medium', 4, 370, 'Schoenjochbahn II and Plazoerlift and Almlift', 'no'); 

CREATE TABLE lifts 
(
	lift varchar(30) primary key,
	type varchar(7),
	summit int,
	rise int,
	length int,
	operating varchar(3)
);

INSERT INTO lifts (lift, type, summit, rise, length, operating) VALUES

	('Schoenjochbahn I', 'gondola', 1920, 440, 1600, 'yes'), 
	('ESL-Fiss-Moeseralm', 'chair', 1850, 400, 1700, 'no'),
	('ESL-Ladis-Fiss', 'chair', 1510, 290, 2700, 'no'),
	('Waldlift', 'tow', 1850, 420, 1200, 'yes'),
	('Rastlift', 'tow', 1900, 150, 400, 'yes'), 
	('Schoenjochbahn II', 'gondola', 2436, 516, 1350, 'yes'), 
	('Sattelkopflift', 'tow', 2100, 220, 1000, 'no'), 
	('Moeserlift', 'tow', 1930, 80, 400, 'yes'), 
	('Wonnelift', 'tow', 2080, 280, 1000, 'yes'), 
	('Plazoerlift', 'tow', 2450, 360, 1350, 'yes'), 
	('Schoenjochlift', 'tow', 2509, 70, 420, 'no'), 
	('Schoengamplift', 'tow', 2509, 420, 1340, 'yes'), 
	('Almlift', 'tow', 2250, 370, 1180, 'no');
