--MATHMATICAL OPERATION FOR NUMBERS

SELECT SUM(level), AVG(level),MIN(level),MAX(level) AS MAX_LVL,
MAX(experience) AS MAX_EXP
FROM `fantasy.Characters`;

--OPERATIONS PERFROMED ON THE STRING

SELECT COUNT(class),MIN(class),MAX(class),STRING_AGG(class,",")
FROM `fantasy.Characters`

--count no of rows in result
SELECT COUNT(*)
FROM `fantasy.Characters`
WHERE is_alive = true