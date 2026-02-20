-- Drop the database if it exists
DROP DATABASE IF EXISTS Hashir_21634493;
CREATE DATABASE Hashir_21634493;
USE Hashir_21634493;

-- Country Table
CREATE TABLE Country (
    country_code CHAR(3) PRIMARY KEY,
    country_name VARCHAR(255),
    total_medals INT
);

-- Discipline Table
CREATE TABLE Discipline (
    discipline_code CHAR(3) PRIMARY KEY,
    discipline_name VARCHAR(255)
);

-- Athlete Table
CREATE TABLE Athlete (
    athlete_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    gender ENUM('Male', 'Female'),
    birth_date DATE,
    birth_place VARCHAR(255),
    birth_country VARCHAR(255),
    sport_class VARCHAR(50),
    country_code CHAR(3),
    discipline_code CHAR(3),
    FOREIGN KEY (country_code) REFERENCES Country(country_code),
    FOREIGN KEY (discipline_code) REFERENCES Discipline(discipline_code)
);

-- Participation Table
CREATE TABLE Participation (
    participation_id INT AUTO_INCREMENT PRIMARY KEY,
    athlete_id INT,
    event VARCHAR(255),
    FOREIGN KEY (athlete_id) REFERENCES Athlete(athlete_id)
);

-- Medals Table
CREATE TABLE Medals (
    medal_id INT AUTO_INCREMENT PRIMARY KEY,
    medal_type ENUM('Gold', 'Silver', 'Bronze'),
    medal_date DATE,
    event VARCHAR(255),
    participation_id INT,
    FOREIGN KEY (participation_id) REFERENCES Participation(participation_id)
);

-- Coach Table
CREATE TABLE Coach (
    coach_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    gender ENUM('Male', 'Female'),
    birth_date DATE,
    `function` VARCHAR(255), -- Using backticks for reserved keyword
    country_code CHAR(3), 
    discipline_code CHAR(3),

    -- Foreign Key Constraints
    FOREIGN KEY (country_code) REFERENCES Country(country_code),
    FOREIGN KEY (discipline_code) REFERENCES Discipline(discipline_code)
);


-- Technical Staff Table
CREATE TABLE Technical_Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    gender ENUM('Male', 'Female'),
    birth_date DATE,
    discipline_code CHAR(3),
    FOREIGN KEY (discipline_code) REFERENCES Discipline(discipline_code)
);

-- describes all the tables made
DESCRIBE Country;
DESCRIBE Discipline;
DESCRIBE Athlete;
DESCRIBE Participation;
DESCRIBE Medals;
DESCRIBE Coach;
DESCRIBE Technical_Staff;