--join two table
SELECT *
FROM fantasy.characters
JOIN fantasy.inventory
on inventory.character_id=characters.id