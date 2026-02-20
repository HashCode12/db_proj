# *************************************************************
# Python Script for MySQL Database Interaction
# Purpose: Demonstrate database connectivity and operations with interactivity
# *************************************************************

import mysql.connector  # MySQL library for database operations
from mysql.connector import Error  # Handle MySQL-specific exceptions
import json  # JSON library for configuration handling

# Load database configuration from a JSON file
def load_db_config(json_file):
    """Loads database configuration from a JSON file."""
    try:
        with open(json_file, 'r') as file:
            return json.load(file)  # Return configuration as a dictionary
    except (FileNotFoundError, json.JSONDecodeError):
        print(f"Error: Could not load or parse '{json_file}'.")
        return None

# Connect to the database
def connect_to_database(config):
    """Establishes a connection to the MySQL database."""
    try:
        connection = mysql.connector.connect(**config)
        if connection.is_connected():
            print("Connected to the database.")
        return connection
    except Error as e:
        print("Error while connecting to MySQL:", e)
        return None

# Check if an athlete exists
def check_athlete_exists(connection, athlete_name):
    """Checks if an athlete with the given name exists in the database."""
    try:
        cursor = connection.cursor()
        cursor.execute("SELECT * FROM Athlete WHERE name = %s;", (athlete_name,))
        return cursor.fetchone()
    except Error:
        return None

# Insert multiple athletes into the database
def insert_multiple_athletes(connection):
    """Inserts multiple athletes, handles duplicates interactively."""
    successfully_added = []
    data = [
        ('Alice Smith', 'Female', '1995-06-15', 'London', 'UK', 'Class B', 'GBR', 'JUD'),
        ('Bob Johnson', 'Male', '1990-03-22', 'Beijing', 'China', 'Class A', 'CHN', 'SWM'),
        ('Cathy Brown', 'Female', '1988-09-12', 'Sydney', 'Australia', 'Class C', 'AUS', 'JUD')
    ]
    query = """
        INSERT INTO Athlete 
        (name, gender, birth_date, birth_place, birth_country, sport_class, country_code, discipline_code)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s);
    """
    cursor = connection.cursor()
    for athlete in data:
        try:
            cursor.execute(query, athlete)  # Attempt insertion
            connection.commit()
            successfully_added.append(athlete[0])
            print(f"Inserted athlete: {athlete[0]}")
        except mysql.connector.IntegrityError:
            print(f"Duplicate detected for '{athlete[0]}'.")
            if check_athlete_exists(connection, athlete[0]):
                choice = input(f"Delete existing athlete '{athlete[0]}'? (yes/no): ").strip().lower()
                if choice in ['yes', 'y']:
                    delete_athlete(connection, athlete[0])  # Delete and reinsert
                    cursor.execute(query, athlete)
                    connection.commit()
                    successfully_added.append(athlete[0])
                    print(f"Reinserted athlete: {athlete[0]}")
    return successfully_added

# Ask if you want to delete athletes
def ask_to_delete_athletes(connection, athlete_names):
    """Asks the user if they want to delete specific athletes."""
    retained_athletes = []
    cursor = connection.cursor()
    for athlete_name in athlete_names:
        choice = input(f"Delete athlete '{athlete_name}'? (yes/no): ").strip().lower()
        if choice in ['yes', 'y']:
            cursor.execute("DELETE FROM Athlete WHERE name = %s;", (athlete_name,))
            connection.commit()
            print(f"Deleted athlete: {athlete_name}")
        else:
            retained_athletes.append(athlete_name)
    return retained_athletes

# Execute a sample SELECT query
def execute_select_query(connection):
    """Fetches and displays the first 5 athletes."""
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM Athlete LIMIT 5;")
    results = cursor.fetchall()
    print("\nSample SELECT Query Results:")
    for row in results:
        print(row)

# Delete an athlete
def delete_athlete(connection, athlete_name):
    """Deletes an athlete by name."""
    cursor = connection.cursor()
    cursor.execute("DELETE FROM Athlete WHERE name = %s;", (athlete_name,))
    connection.commit()
    print(f"Deleted athlete: {athlete_name}")

# Main function
def main():
    config = load_db_config('db_config.json')  # Load configuration
    if not config:
        return
    
    connection = connect_to_database(config)  # Connect to the database
    if connection:
        execute_select_query(connection)  # Display a sample of athletes
        added_athletes = insert_multiple_athletes(connection)  # Insert athletes
        
        # Ask to delete inserted athletes
        if added_athletes:
            retained = ask_to_delete_athletes(connection, added_athletes)
            print("\nFinal list of retained athletes:")
            for athlete in retained:
                print(athlete)
        
        connection.close()  # Close the connection
        print("\nConnection closed.")

# Run the script
if __name__ == "__main__":
    main()
