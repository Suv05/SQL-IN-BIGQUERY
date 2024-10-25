--uninon distinct most used in real world
--here to add columns size would be same and also data type

SELECT id,name,item_type,power,date_added,rarity
FROM fantasy.Items

UNION DISTINCT

SELECT id,name,class,level,last_active,CAST(experience AS STRING)
FROM fantasy.Characters