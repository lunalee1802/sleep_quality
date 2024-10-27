-- Step 1: Create the database and use it
CREATE DATABASE sleep_analysis;
USE sleep_analysis;

-- Step 2: Define the table schema based on the dataset structure
-- This includes columns for person ID, demographics, sleep, activity, and health metrics.
CREATE TABLE sleep_data (
    person_id INT PRIMARY KEY,                -- Unique identifier for each person
    gender VARCHAR(10),                       -- Gender of the individual
    age INT,                                  -- Age of the individual
    occupation VARCHAR(50),                   -- Occupation of the individual
    sleep_duration FLOAT,                     -- Duration of sleep in hours
    quality_of_sleep INT,                     -- Quality rating of sleep (scale or score)
    physical_activity_level INT,              -- Level of physical activity (scale or score)
    stress_level INT,                         -- Stress level rating (scale or score)
    bmi_category VARCHAR(20),                 -- Body Mass Index (BMI) category (e.g., Normal, Overweight)
    blood_pressure VARCHAR(10),               -- Blood pressure (e.g., "120/80")
    heart_rate INT,                           -- Heart rate in beats per minute (bpm)
    daily_steps INT,                          -- Daily steps count
    sleep_disorder VARCHAR(50)                -- Sleep disorder, if any (e.g., None, Sleep Apnea)
);

-- Step 3: Preview the first 5 rows to confirm the structure and content of the data
SELECT * FROM sleep_data LIMIT 5;

-- Step 4: Check for missing values in key columns to identify data completeness
SELECT 
    COUNT(*) - COUNT(sleep_duration) AS missing_sleep_duration,         -- Missing values in sleep_duration
    COUNT(*) - COUNT(quality_of_sleep) AS missing_quality_of_sleep,     -- Missing values in quality_of_sleep
    COUNT(*) - COUNT(physical_activity_level) AS missing_activity_level,-- Missing values in physical_activity_level
    COUNT(*) - COUNT(stress_level) AS missing_stress_level,             -- Missing values in stress_level
    COUNT(*) - COUNT(daily_steps) AS missing_daily_steps                -- Missing values in daily_steps
FROM sleep_data;

-- Step 5: Generate summary statistics for key columns
-- This provides the minimum, maximum, and average for columns of interest
SELECT 
    MIN(sleep_duration) AS min_sleep_duration,
    MAX(sleep_duration) AS max_sleep_duration,
    AVG(sleep_duration) AS avg_sleep_duration,
    
    MIN(quality_of_sleep) AS min_sleep_quality,
    MAX(quality_of_sleep) AS max_sleep_quality,
    AVG(quality_of_sleep) AS avg_sleep_quality,
    
    MIN(physical_activity_level) AS min_activity_level,
    MAX(physical_activity_level) AS max_activity_level,
    AVG(physical_activity_level) AS avg_activity_level,
    
    MIN(stress_level) AS min_stress_level,
    MAX(stress_level) AS max_stress_level,
    AVG(stress_level) AS avg_stress_level,
    
    MIN(daily_steps) AS min_daily_steps,
    MAX(daily_steps) AS max_daily_steps,
    AVG(daily_steps) AS avg_daily_steps
FROM sleep_data;

-- Step 6: Create a view to show average sleep quality by physical activity level
-- This helps analyze how physical activity impacts sleep quality
CREATE VIEW activity_sleep_quality AS
SELECT physical_activity_level, AVG(quality_of_sleep) AS avg_sleep_quality
FROM sleep_data
GROUP BY physical_activity_level;

-- Step 7: Create a view to show average sleep quality by sleep duration range
-- This groups sleep duration into ranges and provides the average quality of sleep for each
CREATE VIEW duration_sleep_quality AS
SELECT 
    CASE
        WHEN sleep_duration < 5 THEN 'Very Short'
        WHEN sleep_duration BETWEEN 5 AND 7 THEN 'Short'
        WHEN sleep_duration BETWEEN 7 AND 9 THEN 'Optimal'
        ELSE 'Long'
    END AS sleep_duration_range,
    AVG(quality_of_sleep) AS avg_sleep_quality
FROM sleep_data
GROUP BY sleep_duration_range;

-- Step 8: Verify the secure_file_priv path for OUTFILE permission
-- This variable controls where files can be exported; check to ensure the path is accessible
SHOW VARIABLES LIKE 'secure_file_priv';

-- Step 9: Export the cleaned data to a CSV file
-- Exports data to the specified path, using comma delimiters and enclosing text with double quotes
SELECT * FROM sleep_data 
INTO OUTFILE 'L:/sql/Uploads/cleaned_sleep_data.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

