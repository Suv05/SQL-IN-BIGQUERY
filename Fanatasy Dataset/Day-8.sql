--show name of employees lies between max and min experience
SELECT name,experience
FROM `fantasy.Characters`
WHERE experience > (
  SELECT MIN(experience)
  FROM `fantasy.Characters`
)
AND experience < (
  SELECT MAX(experience)
  FROM `fantasy.Characters`
)

-- find the difference between a chracter's experince and their mentor's
--corelated subquires
SELECT id AS mentee_id, mentor_id,
(
  SELECT experience
  FROM fantasy.Characters AS MENTOR_TABLE
  WHERE id=MENTEE_TABLE.mentor_id
) - experience AS experience_difference
FROM fantasy.Characters AS Mentee_Table
WHERE mentor_id IS NOT NULL;




--uncorelated subquires
SELECT name,experience
FROM `fantasy.Characters`
WHERE experience > (
  --2100
  SELECT MIN(experience)
  FROM `fantasy.Characters`
)
AND experience <(
  --15000
  SELECT MAX(experience)
  FROM `fantasy.Characters`
)
