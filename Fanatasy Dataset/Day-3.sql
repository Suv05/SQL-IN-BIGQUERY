---generate two new tables from Characters table

CREATE TABLE fantasy.Characters_Alive
AS(
  SELECT *
  FROM fantasy.Characters
  WHERE is_alive=true
);

CREATE TABLE fantasy.Characters_Dead
AS(
  SELECT *
  FROM fantasy.Characters
  WHERE is_alive=false
);

---merge result these two tables by UNION OPERATOR and Intersect operation
SELECT * FROM fantasy.Characters_Alive

---UNION DISTINCT
---UNION ALL

INTERSECT DISTINCT

SELECT * FROM fantasy.Characters_Dead
