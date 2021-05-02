DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center;

CREATE TABLE center(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    location VARCHAR(50)
);

CREATE TABLE doctors(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    field VARCHAR(15)
);

CREATE TABLE center_doctors(
    center_id INT REFERENCES center(id),
    doctor_id INT REFERENCES doctors
);

CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL
);

CREATE TABLE doctor_patient(
    doctor_id INT REFERENCES doctors(id),
    patient_id INT REFERENCES patients
);

CREATE TABLE diseases (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE visit(
    patient_id INT REFERENCES patients,
    disease_id INT REFERENCES diseases
);

\c thatguyish;