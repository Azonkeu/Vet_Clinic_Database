/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
	id                INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	name              VARCHAR  NOT NULL,
	date_of_birth     DATE NOT NULL,
	escape_attempts   INT NOT NULL,
	neutered          BOOLEAN NOT NULL,
	weight_kg         DECIMAL NOT NULL,
	species_id        INT,
	owner_id          INT
  CONSTRAINT fk_species
    FOREIGN KEY (species_id) 
      REFERENCES species(id),
	CONSTRAINT fk_owners
    FOREIGN KEY (owner_id) 
      REFERENCES owners(id),
	PRIMARY KEY(id)
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

CREATE TABLE vets(
	  id                   INT GENERATED ALWAYS AS IDENTITY NOT NULL,
		name                 VARCHAR(255) NOT NULL,
		age                  INT NOT NULL,
		date_of_graduation   DATE NOT NULL,
		PRIMARY KEY(id)
);


CREATE TABLE specializations(
    id                   INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    specie_id            INT NOT NULL,
    vet_id               INT NOT NULL,
    CONSTRAINT fk_specie
		  FOREIGN KEY (specie_id )
        REFERENCES species(id),
	  CONSTRAINT fk_vet
       FOREIGN KEY (vet_id)
        REFERENCES vets(id),
	  PRIMARY KEY (id)
);


CREATE TABLE visits(
    id                   INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    animal_id            INT NOT NULL,
    vete_id              INT NOT NULL,
    date_of_visit        DATE,
    CONSTRAINT fk_animal
      FOREIGN KEY (animal_id)
        REFERENCES animals(id),
	  CONSTRAINT fk_vete
      FOREIGN KEY (vete_id)
        REFERENCES vets(id),
	  PRIMARY KEY (id)
);
