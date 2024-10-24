----------
--select constants
SELECT "hello",1,true

----------

---order of operations
--fuctions, multiplications/divison,add/sub
--bracket goes first

SELECT (3+2*2+1)-4/2*(pow(2,2)-2)/2
---6.0 (ans)

--------
--where
SELECT *

FROM fantasy.Characters
WHERE is_alive=true AND health>50