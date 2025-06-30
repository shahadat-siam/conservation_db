-- Active: 1750760985343@@127.0.0.1@5432@conservation_db
CREATE DATABASE conservation_db;
ALTER DATABASE rare_db RENAME TO conservation_db;
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL
);
INSERT INTO rangers(name, region) VALUES
('Meera Khan', 'North Zone'),
('Rafiq Uddin', 'South Forest'),
('Liam Chowdhury', 'Central Reserve'),
('Sonia Mirza', 'Eastern Range'),
('David Prottoy', 'Western Hills');
SELECT * FROM rangers;

CREATE TABLE species(
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100) NOT NULL,
    discovery_date DATE,
    conservation_status VARCHAR(100)
);
INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES
('Shadow Leopard', 'Panthera uncia', '1775-06-01', 'Vulnerable'),
('Red Panda', 'Ailurus fulgens', '1825-03-12', 'Endangered'),
('Javan Rhino', 'Rhinoceros sondaicus', '1822-09-10', 'Critically Endangered'),
('African Elephant', 'Loxodonta africana', '1758-01-01', 'Vulnerable'),
('Amur Leopard', 'Panthera pardus orientalis', '1857-11-14', NULL);
SELECT * FROM species;

CREATE TABLE sightings(
    sightings_id SERIAL PRIMARY KEY,
    ranger_id INT REFERENCES rangers(ranger_id),
    species_id INT REFERENCES species(species_id),
    sighting_time TIMESTAMP,
    location VARCHAR(100),
    notes TEXT
);
INSERT INTO sightings (ranger_id, species_id, sighting_time, location, notes) VALUES
(1, 2, '2025-06-10 08:30:00', 'North Bamboo Grove', 'Red Panda seen on treetop feeding on bamboo'),
(1, 4, '2025-06-11 17:45:00', 'Riverbend Trail', 'African Elephant herd crossing the trail'),
(4, 1, '2025-06-12 06:20:00', 'Wetland Zone', 'Single Javan Rhino spotted near watering hole'),
(1, 5, '2025-06-13 19:00:00', 'East Ridge', 'Amur Leopard observed resting on a ledge'),
(1, 1, '2025-06-14 05:15:00', 'Shadow Ridge', 'Possible Shadow Leopard tracks found');
SELECT * FROM sightings;
 

--  Problem No. 1
INSERT INTO rangers (name, region)
VALUES ('Derek Fox', 'Coastal Plains');


-- Problem No. 2
SELECT COUNT(DISTINCT species_id) as unique_species_count
    FROM sightings;


-- Problem No. 3
SELECT * FROM sightings 
WHERE location LIKE '%Pass%';


-- Problem No. 4
SELECT r.name, COUNT(s.species_id) AS total_sightings 
  FROM rangers r LEFT JOIN sightings s
  ON r.ranger_id = s.ranger_id GROUP BY r.name; 


-- Problem No. 5
SELECT s.common_name FROM species s LEFT JOIN sightings si ON s.species_id = si.species_id
  WHERE si.species_id IS NULL;