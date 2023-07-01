WITH people AS (SELECT p.gender, pi.name
                FROM person p
                         JOIN person_visits pv ON pv.person_id = p.id
                         JOIN pizzeria pi ON pi.id = pv.pizzeria_id),
     woman AS (SELECT piw.name AS pizzeria_name
               FROM people piw
               WHERE piw.gender = 'female'),
     man AS (SELECT pim.name AS pizzeria_name
             FROM people pim
             WHERE pim.gender = 'male'),
     feple AS (SELECT * FROM woman EXCEPT ALL SELECT * FROM man),
     maple AS (SELECT * FROM man EXCEPT ALL SELECT * FROM woman)
SELECT *
FROM feple
UNION ALL
SELECT *
FROM maple
ORDER BY 1;
