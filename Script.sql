CREATE TABLE IF NOT EXISTS Genre (
	id serial PRIMARY KEY,
	title text NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer (
	id serial PRIMARY KEY,
	name varchar(100) NOT NULL,
	genre_id integer REFERENCES Genre(id)
);

CREATE TABLE IF NOT EXISTS Album (
	id serial PRIMARY KEY,
	title varchar(100) NOT NULL,
	year_album integer,
	performer_id integer REFERENCES Performer(id)
);

CREATE TABLE IF NOT EXISTS Track (
	id serial PRIMARY KEY,
	title varchar(100) NOT NULL,
	duration NUMERIC(3, 2),
	album_id integer REFERENCES Album(id)
);
