--join two table
SELECT
    *
FROM
    fantasy.characters
    JOIN fantasy.inventory on inventory.character_id = characters.id

--a character can use any item for which the power level
--is equal or greater than the character's experience
--divided by 100

--a list of all characters and the items that they can use

SELECT c.name, c.experience/100, i.name, i.power
FROM fantasy.characters c
JOIN fantasy.items i 
on c.experience/100 <= i.power OR c.class= "Mage"
ORDER BY c.name