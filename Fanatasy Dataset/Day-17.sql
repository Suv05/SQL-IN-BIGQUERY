--Numbering functions
SELECT item_id, value,
ROW_NUMBER() OVER(ORDER BY value) AS 'row_number',
DENSE_RANK() OVER(ORDER BY value) AS 'dense_rank',
RANK() OVER(ORDER BY value) AS 'rank',
FROM fantasy.inventory
ORDER BY value