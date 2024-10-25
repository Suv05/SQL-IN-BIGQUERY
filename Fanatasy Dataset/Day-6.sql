---A basic and complete sql query
SELECT level,name,class
FROM fantasy.Characters
WHERE is_alive=true
ORDER BY level
LIMIT 5

---bracketing in sql

-- up to lvl-15 low
-- up to lvl-15 to 25 mid
-- more than lvl-25 super

SELECT name,level, level>=20 AS level_goat,

CASE
  when level<15 then "low"
  when level<=25 then "mid"
  else "super"

END AS level_bucket

FROM fantasy.Characters
WHERE is_alive=true

