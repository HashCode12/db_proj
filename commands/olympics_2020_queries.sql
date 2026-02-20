-- Name: Muhammad Hashir
-- Student ID: 21634493
-- Database final assignment Part 3

-- Level 1
-- Question1
-- Retrieve athletes of a specific gender (e.g., Male)
SELECT name AS athlete_name,sport_class -- Select the name of the athlete and Select the sport class of the athlete
FROM Athlete                 -- Query from the Athlete table
WHERE gender = 'Male';       -- Filter to only include male athletes
-- This query retrieves the names and sport classes of all male athletes.

-- Question2.
-- Retrieve all coaches born after January 1, 1980
SELECT name AS 
    coach_name,   -- Select the name of the coach
    gender, -- Select the gender of the coach
    `function` -- Select the function or role of the coach
FROM Coach  -- Query from the Coach table
WHERE birth_date > '1980-01-01'; -- Filter coaches born after January 1, 1980
-- query retrieves the names, genders, and roles of all coaches born after 1980.


-- Question3.
-- Retrieve events where Gold medals were awarded
SELECT DISTINCT event
FROM Medals
WHERE medal_type = 'Gold';
-- Uses a WHERE clause to filter events where Gold medals were awarded.


-- Question4
-- Retrieve disciplines based on a specific discipline code
SELECT discipline_name
FROM Discipline
WHERE discipline_code = 'ATH'; 
-- Filters the Discipline table based on a specific code.


-- Level 2
-- Question 5
-- Retrieve athletes along with their associated countries and disciplines
SELECT Athlete.name AS athlete_name, -- Select the name of the athlete
       Country.country_name,         -- Select the name of the athlete's country
       Discipline.discipline_name    -- Select the name of the athlete's discipline
FROM Athlete
INNER JOIN Country   -- Join with the Country table
    ON Athlete.country_code = Country.country_code -- Match the athlete's country code with the Country table
INNER JOIN Discipline   -- Join with the Discipline table
    ON Athlete.discipline_code = Discipline.discipline_code; -- Match the athlete's discipline code with the Discipline table
-- query retrieves athlete information and links it to their countries and disciplines.


-- Question 6
-- Retrieve coaches from Australia along with their disciplines
SELECT Coach.name AS coach_name,     -- Select the name of the coach
       Country.country_name,         -- Select the name of the coach's country
       Discipline.discipline_name    -- Select the name of the coach's discipline
FROM Coach
LEFT JOIN Country   -- Perform a LEFT JOIN with the Country table
    ON Coach.country_code = Country.country_code  -- Match the coach's country code with the Country table
LEFT JOIN Discipline   -- Perform a LEFT JOIN with the Discipline table
    ON Coach.discipline_code = Discipline.discipline_code -- Match the coach's discipline code with the Discipline table
WHERE Country.country_name = 'Australia'; -- Filter to include only coaches from Australia
-- query retrieves coaches from Australia and links them to their disciplines.


-- Question 7
-- Retrieve details of medals along with athlete and country information
SELECT Medals.medal_type,   -- Select the type of medal (Gold, Silver, or Bronze)
        Medals.event,   -- Select the event where the medal was awarded
        Athlete.name AS athlete_name, -- Select the name of the athlete who won the medal
        Country.country_name   -- Select the name of the athlete's country
FROM Medals
LEFT JOIN Participation   -- LEFT JOIN with the Participation table
    ON Medals.participation_id = Participation.participation_id -- Match medals to participation records
LEFT JOIN Athlete   -- LEFT JOIN with the Athlete table
    ON Participation.athlete_id = Athlete.athlete_id -- Match participation to athlete records
LEFT JOIN Country   -- LEFT JOIN with the Country table
    ON Athlete.country_code = Country.country_code; -- Match athletes to their country
-- query retrieves details about medals, linking them to athletes and their countries.


-- Question 8
-- Calculate the total number of medals won by each athlete
SELECT Athlete.name AS athlete_name, -- Select the name of the athlete
       COUNT(Medals.medal_id) AS total_medals -- Count the total number of medals won by the athlete
FROM Athlete                         -- Query from the Athlete table
LEFT JOIN Participation              -- LEFT JOIN with the Participation table
    ON Athlete.athlete_id = Participation.athlete_id -- Match athletes with their participation records
LEFT JOIN Medals                     -- LEFT JOIN with the Medals table
    ON Participation.participation_id = Medals.participation_id -- Match participation records with medals
GROUP BY Athlete.name;   -- Group the results by athlete name


-- Question 9
-- Calculate the total number of medals won by each country
SELECT Country.country_name,         -- Select the name of the country
       COUNT(Medals.medal_id) AS total_medals -- Count the total number of medals won by the country
FROM Country
LEFT JOIN Athlete   -- Perform a LEFT JOIN with the Athlete table
    ON Country.country_code = Athlete.country_code -- Match countries with their athletes
LEFT JOIN Participation   -- Perform a LEFT JOIN with the Participation table
    ON Athlete.athlete_id = Participation.athlete_id -- Match athletes with their participation records
LEFT JOIN Medals   -- Perform a LEFT JOIN with the Medals table
    ON Participation.participation_id = Medals.participation_id -- Match participation records with medals
GROUP BY Country.country_name;  -- Group the results by country name


-- Question 10
-- Retrieve all technical staff managing Sitting Volleyball
SELECT Technical_Staff.name AS staff_name, -- Select the name of the technical staff
    Technical_Staff.gender,   -- Select the gender of the technical staff
    Discipline.discipline_name    -- Select the name of the associated discipline
FROM Technical_Staff   -- Query from the Technical_Staff table
INNER JOIN Discipline   -- Perform an INNER JOIN with the Discipline table
    ON Technical_Staff.discipline_code = Discipline.discipline_code -- Match staff to their discipline
WHERE Discipline.discipline_name = 'Sitting Volleyball'; -- Filter for staff managing Sitting Volleyball
--  retrieves all technical staff linked to the Sitting Volleyball discipline.