-- SQL Advent Calendar - Day 7
-- Title: Snowflake Types Count
-- Difficulty: easy
--
-- Question:
-- Frosty wants to know how many unique snowflake types were recorded on the December 24th, 2025 storm. Can you help him?
--
-- Frosty wants to know how many unique snowflake types were recorded on the December 24th, 2025 storm. Can you help him?
--

-- Table Schema:
-- Table: snowfall_log
--   flake_id: INT
--   flake_type: VARCHAR
--   fall_time: TIMESTAMP
--

-- My Solution:

SELECT 
  COUNT (DISTINCT flake_type)
FROM 
  snowfall_log
WHERE 
  strftime('%d', fall_time) = '24'
  AND strftime('%m', fall_time) = '12'
  AND strftime('%Y', fall_time) = '2025';
