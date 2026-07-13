--1. Brazil recorded the highest number of wins.
--2. Semi-finals had the highest average goals per match.
--3. 15% of matches were decided by penalties.
CREATE DATABASE fifa_analysis;

USE fifa_analysis;

SHOW TABLES;

-- Total matches played : 92
SELECT COUNT(*) AS total_matches
FROM matches;

-- Average goals per match : 29239
SELECT AVG(total_goals) AS avg_goals
FROM matches;

-- Match with Highest Goals : match_id 9
SELECT *
FROM matches
ORDER BY total_goals DESC
LIMIT 1;

-- Matches Decided by Penalties : penalty_matches 3
SELECT COUNT(*) AS penalty_matches
FROM matches
WHERE decided_by_penalties = 1;

-- Average Goal Difference : 15761
SELECT AVG(goal_difference) AS avg_goal_difference
FROM matches;

-- Top 10 teams with most wins 
SELECT winner,
       COUNT(*) AS total_wins
FROM matches
GROUP BY winner
ORDER BY total_wins DESC
LIMIT 10;

-- Top 5 highest scoring matches
SELECT match_id,
       stage,
       total_goals
FROM matches
ORDER BY total_goals DESC
LIMIT 5;
