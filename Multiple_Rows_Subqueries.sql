----------------------------
-- Multiple Rows Subqueries
----------------------------
USE police;
 SELECT Badge, Full_Name, Station_id
 FROM cops
 WHERE Station_id = (SELECT Station_id
 					FROM cops
 					WHERE Full_Name = 'Agent K');

 SELECT Badge, Full_Name, Station_id, Superior_id
 FROM cops
 WHERE Station_id = (SELECT Station_id
 					FROM cops
 					WHERE Superior_id = 'C-33333');

-- Show all cops that earn more than 50,000
-- SELECT Badge, Full_Name, rank_id
-- FROM cops
-- WHERE rank_id IN (SELECT rank_id 
-- 					FROM ranks
-- 					WHERE Base_Salary > 50000);