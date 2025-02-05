SELECT
    chars.name AS character_name,
    mentor.name AS mentor_name
FROM
    fantasy.characters chars
    LEFT JOIN fantasy.characters mentors on chars.mentor_id = mentors.id