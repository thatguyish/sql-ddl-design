-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL
);

CREATE TABLE moons(
  id SERIAL PRIMARY KEY,
  name VARCHAR(15)
);

CREATE TABLE galaxies(
  id SERIAL PRIMARY KEY,
  name VARCHAR(15)
);

CREATE TABLE orbitals(
  id SERIAL PRIMARY KEY,
  name VARCHAR(15)
);

CREATE TABLE planets_orbitals(
  planet_id INT REFERENCES planets,
  orbitals INT REFERENCES orbitals
);

CREATE TABLE planets_moons(
  planet_id INT REFERENCES planets,
  moon_id INT REFERENCES moons
);

CREATE TABLE planets_galaxies(
  planet_id INT REFERENCES planets,
  galaxy_id INT REFERENCES galaxy
);
