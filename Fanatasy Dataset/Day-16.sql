--window function
SELECT
    name,
    item_type,
    'power',
    SUM(power) OVER () AS sum_power
FROM
    fantasy.items


-- show, for each item, what % of total power it covers
SELECT
    name,
    item_type,
    'power',
    SUM('power') OVER () AS sum_power,
    'power' / SUM('power') OVER () * 100 AS percent_total_power,
    AVG("power") OVER () AS avg_power
FROM
    fantasy.items



-- -- --- ---- ----- -----
SELECT name, item_type, power,
SUM(power) OVER(PARTITION BY item_type)
FROM fantasy.items

SELECT name, item_type, power,
SUM(power) OVER(ORDER BY power ASC)
FROM fantasy.items

-- -- --- ---- ----- -----
SELECT name, item_type, power,
SUM(power) OVER(PARTITION BY item_type ORDER BY power ASC)
FROM fantasy.items
ORDER BY item_type, power