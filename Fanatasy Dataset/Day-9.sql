--to select the power level where it is >= 15 i have to run a subquey

SELECT *
FROM
(SELECT name,
level,
  CASE
    WHEN class = 'Mage' THEN level*0.5
    WHEN class IN ('Archer','Warrior') THEN level*0.75
    else level * 1.5
  END AS POWER_LEVEL

FROM `fantasy.Characters`)

WHERE POWER_LEVEL>=15