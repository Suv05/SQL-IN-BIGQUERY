SELECT class, AVG(experience) AS avg_experience, AVG(level)|
FROM fantasy.characters
GROUP BY class
HAVING AVG(level) >= 20