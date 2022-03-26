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
