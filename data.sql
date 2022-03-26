/* Populate database with sample data. */
INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts, species_id, owner_id)
VALUES
('Agumon', '2020-02-03', 10.23, 'yes', 0, 2, 1),
('Gabumon', '2018-11-15', 8, 'yes', 2, 2, 2),
('Pikachu', '2021-01-07', 15.04, 'no', 1, 1, 2),
('Devimon', '2017-05-12', 11, 'yes', 5, 2, 3),
('Charmander', '2020-02-08', 11, 'no', 0, 1, 4),
('Plantmon', '2021-11-15', 5.7, 'yes', 2, 2, 3),
('Squirtle', '1993-04-02', 12.13, 'no', 3, 1, 4),
('Angemon', '2005-06-12', 45, 'yes', 1, 2, 5),
('Boarmon', '2005-06-7', 20.4, 'yes', 7, 2, 5),
('Blossom', '1998-10-13', 17, 'yes', 3, 1, 4),
('Ditto', '2022-05-14', 22, 'yes', 4);


INSERT INTO owners(full_name, age)
VALUES
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);


INSERT INTO species(name)
VALUES
('Pokemon'),
('Digimon');

INSERT INTO vets(name, age, date_of_graduation)
VALUES
('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');


INSERT INTO specializations (species_id,vets_id)
VALUES
    (1, 1),
    (1, 3),
    (2, 3),
    (2, 4);


INSERT INTO visits (animal_id,vet_id,date_of_visit)
VALUES 
    (
      (SELECT id FROM animals WHERE name = 'Agumon'),
      (SELECT id FROM vets WHERE name = 'William Tatcher'),
      '05/24/2020'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Agumon'),
      (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
      '07/22/2020'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Gabumon'),
      (SELECT id FROM vets WHERE name = 'Jack Harkness'),
      '02/02/2021'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Pikachu'),
      (SELECT id FROM vets WHERE name = 'Maisy Smith'),
      '01/05/2020'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Pikachu'),
      (SELECT id FROM vets WHERE name = 'Maisy Smith'),
      '03/08/2020'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Pikachu'),
      (SELECT id FROM vets WHERE name = 'Maisy Smith'),
      '05/14/2020'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Devimon'),
      (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
      '05/04/2021'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Charmander'),
      (SELECT id FROM vets WHERE name = 'Jack Harkness'),
      '02/24/2021'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Squirtle'),
      (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
      '09/29/2019'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Angemon'),
      (SELECT id FROM vets WHERE name = 'Jack Harkness'),
      '10/03/2020'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Angemon'),
      (SELECT id FROM vets WHERE name = 'Jack Harkness'),
      '11/04/2020'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Boarmon'),
      (SELECT id FROM vets WHERE name = 'Maisy Smith'),
      '01/24/2019'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Boarmon'),
      (SELECT id FROM vets WHERE name = 'Maisy Smith'),
      '05/15/2019'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Boarmon'),
      (SELECT id FROM vets WHERE name = 'Maisy Smith'),
      '02/27/2020'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Boarmon'),
      (SELECT id FROM vets WHERE name = 'Maisy Smith'),
      '08/03/2020'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Blossom'),
      (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
      '05/24/2020'
    ),
    (
      (SELECT id FROM animals WHERE name = 'Blossom'),
      (SELECT id FROM vets WHERE name = 'William Tatcher'),
      '01/11/2021'
    );

