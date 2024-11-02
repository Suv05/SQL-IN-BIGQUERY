-- common table expression quiry

WITH power_level_table AS (
  SELECT name,
         level,
         CASE
           WHEN class = 'Mage' THEN level * 0.5
           WHEN class IN ('Archer', 'Warrior') THEN level * 0.75
           ELSE level * 1.5
         END AS POWER_LEVEL
  FROM `fantasy.Characters`
)

SELECT *
FROM power_level_table
WHERE POWER_LEVEL >= 15
ORDER BY POWER_LEVEL DESC;