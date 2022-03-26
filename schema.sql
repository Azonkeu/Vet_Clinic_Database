/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
	id                INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY NOT NULL,
	name              VARCHAR  NOT NULL,
	date_of_birth     DATE NOT NULL,
	escape_attempts   INT NOT NULL,
	neutered          BOOLEAN NOT NULL,
	weight_kg         DECIMAL NOT NULL,
    species           VARCHAR NOT NULL
);

CREATE TABLE owners(
	  id           INT GENERATED ALWAYS AS IDENTITY NOT NULL,
		full_name    VARCHAR(255) NOT NULL,
		age          INT NOT NULL,
		PRIMARY KEY(id)
);

CREATE TABLE species(
	  id           INT GENERATED ALWAYS AS IDENTITY NOT NULL,
		name    VARCHAR(255) NOT NULL,
		PRIMARY KEY(id)
);