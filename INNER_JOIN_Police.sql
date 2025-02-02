-- Use the database
USE `police`;

-- Find the station of Agent K and Agent J
SELECT c.Badge, c.Full_Name, s.Station_id, s.City, s.manpower
FROM cops AS c
INNER JOIN stations AS s ON c.Station_id = s.Station_id
WHERE c.Full_Name IN ('Agent K', 'Agent J');

-- Find the station of each cop
SELECT c.Badge, c.Full_Name, s.Station_id, s.City
FROM cops AS c
INNER JOIN stations AS s ON c.Station_id = s.Station_id;


