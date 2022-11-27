CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Executor (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS Genres_Executor (
	Genre_id INTEGER REFERENCES Genre(id),
	Executor_id INTEGER REFERENCES Executor(id),
	CONSTRAINT pk_Genres_Executor PRIMARY KEY (Genre_id, Executor_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT null,
	years INTEGER
);

CREATE TABLE IF NOT EXISTS Albums_Executor (
	Album_id INTEGER REFERENCES Album(id),
	Executor_id INTEGER REFERENCES Executor(id),
	CONSTRAINT pk_Albums_Executor PRIMARY KEY (Album_id, Executor_id)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT null,
	lenght FLOAT,	
	Album_id INTEGER NOT null REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT null,
	years INTEGER
);

CREATE TABLE IF NOT EXISTS Collection_Track (
	Track_id INTEGER REFERENCES Track(id),
	Collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_Collection_Track PRIMARY KEY (Track_id, Collection_id)
);

