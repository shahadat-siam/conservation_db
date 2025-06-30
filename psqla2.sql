-- Active: 1750400623201@@127.0.0.1@5432@conservation_db
CREATE DATABASE conservation_db;

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