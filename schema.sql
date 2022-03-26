/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
	id                INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY NOT NULL,
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
		UNIQUE(id)
);

CREATE TABLE visits(
	  visit_id           INT NOT NULL,
		names_id              INT NOT NULL,
		date_of_visits       DATE NOT NULL,
		CONSTRAINT fk_animals
      FOREIGN KEY (visit_id) 
        REFERENCES animals(id)
			   ON DELETE RESTRICT ON UPDATE CASCADE,
	  CONSTRAINT fk_vets
      FOREIGN KEY (names_id ) 
        REFERENCES vets(id)
				ON DELETE RESTRICT ON UPDATE CASCADE,
		PRIMARY KEY(visit_id, names_id)
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


CREATE TABLE specializations (
  id SERIAL PRIMARY KEY,
  species_id INT NOT NULL,
  vet_id INT NOT NULL,
  FOREIGN KEY (species_id) REFERENCES species (id),
  FOREIGN KEY (vet_id) REFERENCES vets (id)
);

CREATE TABLE visits (
  visit_id SERIAL PRIMARY KEY,
  animal_id INT NOT NULL,
  vet_id INT NOT NULL,
  date_of_visit DATE,
  FOREIGN KEY (animal_id) REFERENCES animals (id),
  FOREIGN KEY (vet_id) REFERENCES vets (id)
);