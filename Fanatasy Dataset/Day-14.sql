--Group by
SELECT item_type, AVG('power') AS avg_power
FROM fantasy.items
GROUP BY item_type

--Error here ❌
SELECT name, item_type, AVG('power') AS avg_power
FROM fantasy.items
GROUP BY item_type

-- name, item_type, avg_power_by_type
-- chainmail armor, armor, 69.5
-- elven bow, weapon, 85.58




--Law of grouping. After a GROUP BY I can only select:

--1. Grouping fields (columns that I listed in GROUP BY)
--2. Aggregations of other fields

--with this we don't get erorr but can't achieve our target of avg which is a limitation of group by timeline: 5:50:00
SELECT item_type,name, AVG('power') AS avg_power
FROM fantasy.items
GROUP BY item_type, name


--we can acheve this by window function
select name, item_type, AVG( 'power') OVER(PARTITION BY item_type) AS
avg_power_by_type
FROM fantasy.items