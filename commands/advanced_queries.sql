-- *************************************************************
-- PROCEDURE: AddAthlete
-- Purpose: To insert a new athlete into the Athlete table
-- Why: Simplifies adding athletes with a structured approach
-- *************************************************************

DELIMITER //

CREATE PROCEDURE AddAthlete(
    IN athlete_name VARCHAR(255), -- Name of the athlete
    IN athlete_gender ENUM('Male', 'Female'), -- Gender of the athlete
    IN athlete_birth_date DATE, -- Birth date of the athlete
    IN athlete_birth_place VARCHAR(255), -- Birthplace of the athlete
    IN athlete_birth_country VARCHAR(255), -- Birth country of the athlete
    IN athlete_sport_class VARCHAR(50), -- Sport classification of the athlete
    IN athlete_country_code CHAR(3), -- Country code of the athlete
    IN athlete_discipline_code CHAR(3) -- Discipline code of the athlete
)
BEGIN
    -- Insert the provided values into the Athlete table
    INSERT INTO Athlete (name, gender, birth_date, birth_place, birth_country, sport_class, country_code, discipline_code)
    VALUES (athlete_name, athlete_gender, athlete_birth_date, athlete_birth_place, athlete_birth_country, athlete_sport_class, athlete_country_code, athlete_discipline_code);
END //

DELIMITER ;

-- Usage Example: 
-- CALL AddAthlete('John Doe', 'Male', '1990-01-15', 'New York', 'USA', 'Class A', 'USA', 'ATH');

-- *************************************************************
-- PROCEDURE: GetTotalMedalsByCountry
-- Purpose: To calculate the total number of medals won by a country
-- Why: Allows quick retrieval of medal counts for any country
-- *************************************************************

DELIMITER //

CREATE PROCEDURE GetTotalMedalsByCountry(
    IN country_code CHAR(3), -- Input parameter for country code
    OUT total_medals INT -- Output parameter for total medals
)
BEGIN
    -- Calculate the total medals won by a country
    SELECT COUNT(Medals.medal_id) INTO total_medals
    FROM Country
    LEFT JOIN Athlete ON Country.country_code = Athlete.country_code -- Match athletes with their country
    LEFT JOIN Participation ON Athlete.athlete_id = Participation.athlete_id -- Match athletes with participation records
    LEFT JOIN Medals ON Participation.participation_id = Medals.participation_id -- Match participation with medals
    WHERE Country.country_code = country_code; -- Filter by country code
END //

DELIMITER ;

-- Usage Example:
-- CALL GetTotalMedalsByCountry('USA', @total_medals);
-- SELECT @total_medals;

-- *************************************************************
-- TRIGGER: PreventDuplicateAthletes
-- Purpose: To prevent duplicate entries of athletes
-- Why: Ensures data consistency by avoiding duplicate athlete names
-- *************************************************************

DELIMITER //

CREATE TRIGGER PreventDuplicateAthletes
BEFORE INSERT ON Athlete
FOR EACH ROW
BEGIN
    DECLARE existing_count INT; -- Variable to store the count of existing athletes
    -- Check if an athlete with the same name already exists
    SELECT COUNT(*) INTO existing_count
    FROM Athlete
    WHERE name = NEW.name;

    -- If a duplicate is found, raise an error
    IF existing_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Duplicate athlete name not allowed.';
    END IF;
END //

DELIMITER ;

-- Prevents duplicate entries in the Athlete table

-- *************************************************************
-- TABLE: MedalInsertionLog
-- Purpose: To maintain a log of medal insertions
-- Why: Tracks details about medals for auditing or reporting
-- *************************************************************

CREATE TABLE MedalInsertionLog (
    log_id INT AUTO_INCREMENT PRIMARY KEY, -- Auto-incrementing log ID
    athlete_name VARCHAR(255), -- Name of the athlete
    country_name VARCHAR(255), -- Name of the country
    country_code CHAR(3), -- Code of the country
    medal_type ENUM('Gold', 'Silver', 'Bronze'), -- Type of medal awarded
    event VARCHAR(255), -- Event in which the medal was awarded
    medal_date DATETIME DEFAULT CURRENT_TIMESTAMP -- Timestamp of the log entry
);

-- *************************************************************
-- TRIGGER: UpdateTotalMedals
-- Purpose: To update the total medal count and log medal insertions
-- Why: Automates medal tracking and updates for better data management
-- *************************************************************

DELIMITER //

CREATE TRIGGER UpdateTotalMedals
AFTER INSERT ON Medals
FOR EACH ROW
BEGIN
    DECLARE athlete_name VARCHAR(255); -- Variable to store the athlete's name
    DECLARE country_name VARCHAR(255); -- Variable to store the country's name
    DECLARE country_code CHAR(3); -- Variable to store the country's code

    -- Fetch the athlete's name, country name, and country code
    SELECT Athlete.name, Country.country_name, Country.country_code
    INTO athlete_name, country_name, country_code
    FROM Athlete
    INNER JOIN Country ON Athlete.country_code = Country.country_code -- Match athlete's country
    INNER JOIN Participation ON Athlete.athlete_id = Participation.athlete_id -- Match athlete with participation
    WHERE Participation.participation_id = NEW.participation_id;

    -- Insert details into the MedalInsertionLog table
    INSERT INTO MedalInsertionLog (athlete_name, country_name, country_code, medal_type, event)
    VALUES (athlete_name, country_name, country_code, NEW.medal_type, NEW.event);

    -- Update the total medal count for the country
    UPDATE Country
    SET total_medals = total_medals + 1
    WHERE country_code = country_code; -- Update the country based on its code
END //

DELIMITER ;

-- Usage:
-- When a new medal is added, the trigger automatically logs the details and updates the total medals count.

--INSERT INTO Medals (medal_type, medal_date, event, participation_id) VALUES ('Silver', '2024-11-02', '200m Butterfly', 2);
-- SELECT * FROM MedalInsertionLog;


