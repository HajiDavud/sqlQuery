
CREATE TABLE genres
(
	id INT IDENTITY PRIMARY KEY,
	genres_type VARCHAR(255),

)

CREATE TABLE movies 
(
	id INT IDENTITY PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	hours INT,
	genresID INT,
	FOREIGN KEY(genresID) REFERENCES genres(id),
	release_date VARCHAR(255),
)

CREATE TABLE actors
(
	id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(255) NOT NULL,
	surname VARCHAR(255) NOT NULL,
	age NVARCHAR(255) NOT NULL,


)

CREATE TABLE actormovies
(
	id INT IDENTITY PRIMARY KEY,
	actorID INT,
	movieID INT,
	FOREIGN KEY(actorID) REFERENCES actors(id),
	FOREIGN KEY(movieID) REFERENCES movies(id),

)



INSERT INTO genres
VALUES('Bilim Kurqu')

INSERT INTO genres
VALUES('Fantastik')

INSERT INTO genres
VALUES('Qorxu')

SELECT * FROM genres;


INSERT INTO movies
VALUES('Infiniti',2,1,'2020-06-08')



INSERT INTO movies
VALUES('Harry Potter',3,1,'2010-05-08')

INSERT INTO movies
VALUES('Upgrade',1,2,'2021-05-08')



INSERT INTO actors VALUES ('Davud','Haji','21')
INSERT INTO actors VALUES ('Haji','Davud','19')
INSERT INTO actors VALUES ('Sadig','Hajili','29')
INSERT INTO actors VALUES ('Namiq','Hajili','45')



SELECT * FROM actors;


INSERT INTO actormovies VALUES(1,1);
INSERT INTO actormovies VALUES(1,2);
INSERT INTO actormovies VALUES(2,2);
INSERT INTO actormovies VALUES(2,3);
INSERT INTO actormovies VALUES(3,1);


SELECT * FROM actormovies;


SELECT * FROM actors WHERE(actors.age>(actors.age/(LEN(actors.age))));
