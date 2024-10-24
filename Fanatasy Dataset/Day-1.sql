SELECT name,id

FROM fantasy.Characters


----------------
---aliasing (Rename the coloumn)

SELECT name,id,level AS char_level

FROM fantasy.Characters

---------------
---constants (constant value)

SELECT name,id,level AS char_level ,1 AS version

FROM fantasy.Characters

-----------------
---calculations

SELECT name,level AS char_level ,experience,experience/100,
experience/level*2

FROM fantasy.Characters

------------
---functions

SELECT name,level AS char_level ,SQRT(16),SQRT(level)

FROM fantasy.Characters