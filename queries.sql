/*Queries that provide answers to the questions from all projects.*/

/*Find all animals whose name ends in "mon" */
SELECT * FROM animals  WHERE name LIKE '%mon';

/* List the name of all animals born between 2016 and 2019. */
SELECT name FROM animals  WHERE date_of_birth >= '2016-01-01' AND date_of_birth < '2020-01-01';

/* List the name of all animals that are neutered and have less than 3 escape attempts. */
SELECT name FROM animals  WHERE neutered = 'yes' AND escape_attempts < 3;

/* List date of birth of all animals named either "Agumon" or "Pikachu" */
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';

/* List name and escape attempts of animals that weigh more than 10.5kg */
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

/* Find all animals that are neutered. */
SELECT * FROM animals WHERE neutered = 'yes';

/* Find all animals not named Gabumon. */
SELECT * FROM animals WHERE name != 'Gabumon';

/* Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg) */
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

/* Begin Update Rollback */
BEGIN;
UPDATE animals
SET species = 'unspecified'; 
ROLLBACK;


/* Begin Update Commit */
BEGIN;

UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';

UPDATE animals
SET species = 'pokemon'
WHERE name NOT LIKE '%mon';

COMMIT;

/* Begin Delete */
BEGIN;

DELETE FROM animals;

ROLLBACK;


/*savepoint*/

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT my_savepoint;
UPDATE animals
SET weight_kg = weight_kg * -1;
ROLLBACK TO SAVEPOINT my_savepoint;
UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

COMMIT;


/* Number of animals in the table */

SELECT COUNT(*) FROM animals;


/* Number of animals in that never tried to escape*/
SELECT COUNT(*) FROM animals
WHERE escape_attempts = 0;

/* average weight of animals? */
SELECT AVG(weight_kg) FROM animals;

/* escapes the most, neutered or not neutered animals? */
SELECT
    name, MAX(escape_attempts)
FROM
    animals
GROUP BY name
HAVING MAX(escape_attempts) > 6

/* minimum and maximum weight of each type of animal? */
SELECT
  species, MAX(weight_kg), MIN(weight_kg)
FROM
  animals
GROUP BY species;

/* Average number of escape attempts per type of those born between 1990 and 2000*/
SELECT
    species, AVG(escape_attempts)
FROM
    animals
WHERE date_of_birth >= '1990-01-01' AND date_of_birth < '2000-01-01'
GROUP BY species;


/*animals belonging to Melody Pond*/
SELECT full_name, name
FROM owners o
INNER JOIN animals a ON o.id = a.owner_id
WHERE a.owner_id = 4;

/* List of all animals that are pokemon */
SELECT a.name, s.name
FROM animals a
INNER JOIN species s ON s.id = a.species_id
WHERE a.species_id = 1;

/* List all owners and their animals, remember to include those that don't own any animal. */
SELECT full_name, name
FROM owners o
FULL JOIN animals a ON o.id = a.owner_id

/* How many animals are there per species? */
SELECT
   s.name, COUNT(species_id)
FROM
    animals
JOIN species s ON s.id = species_id
GROUP BY s.name, species_id

/* List all Digimon owned by Jennifer Orwell. */
SELECT a.name
FROM animals a
INNER JOIN owners o ON o.id = a.owner_id
INNER JOIN species s ON  s.id = a.species_id
WHERE a.species_id = 2 AND o.full_name = 'Jennifer Orwell';

/* List all animals owned by Dean Winchester that haven't tried to escape.*/
SELECT a.name
FROM animals a
INNER JOIN owners o ON o.id = a.owner_id
WHERE a.owner_id = 5 AND a.escape_attempts = 0;


/*Who owns the most animals*/
SELECT
   o.full_name, COUNT(name)
FROM
    animals
JOIN owners o ON o.id = owner_id
GROUP BY o.full_name, owner_id
HAVING COUNT(name) = 3