---A basic and complete sql query
SELECT level,name,class
FROM fantasy.Characters
WHERE is_alive=true
ORDER BY level
LIMIT 5

