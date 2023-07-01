WITH people AS (SELECT p.gender, pi.name
                FROM person p
                         JOIN person_order po ON po.person_id = p.id
                        JOIN menu m ON m.id = po.menu_id
                         JOIN pizzeria pi ON pi.id = m.pizzeria_id),
     woman AS (SELECT piw.name AS pizzeria_name
               FROM people piw
               WHERE piw.gender = 'female'),
     man AS (SELECT pim.name AS pizzeria_name
             FROM people pim
             WHERE pim.gender = 'male'),
     feple AS (SELECT * FROM woman EXCEPT SELECT * FROM man),
     maple AS (SELECT * FROM man EXCEPT SELECT * FROM woman)
SELECT *
FROM feple
UNION
SELECT *
FROM maple
ORDER BY 1;