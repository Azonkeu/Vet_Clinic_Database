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


INSERT INTO specializations(vet_id, specie_id)
VALUES
(1, 1),
(3, 2),
(3, 1),
(4, 2);

INSERT INTO visits(animal_id, vete_id, date_of_visit)
VALUES
(1, 1, '2020-05-24'),
(1, 3, '2020-06-22'),
(2, 4, '2021-02-02'),
(3, 2, '2020-01-05'),
(3, 2, '2020-05-08'),
(3, 2, '2020-05-14'),
(4, 3, '2021-05-04'),
(5, 4, '2021-02-24'),
(6, 2, '2019-12-21'),
(6, 1, '2020-08-10'),
(6, 2, '2021-04-07'),
(7, 3, '2019-09-29'),
(8, 4, '2020-10-03'),
(8, 4, '2020-11-04'),
(9, 2, '2019-01-24'),
(9, 2, '2019-05-15'),
(9, 2, '2020-02-27'),
(9, 2, '2020-08-03'),
(10, 3, '2020-05-24'),
(10, 1, '2021-01-11');

