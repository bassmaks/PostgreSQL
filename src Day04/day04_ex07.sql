INSERT INTO person_visits
VALUES ((SELECT MAX(id) FROM person_visits) + 1,
        (SELECT p.id FROM person p WHERE p.name = 'Dmitriy'),
        (SELECT pi.id FROM (SELECT * FROM pizzeria WHERE name NOT LIKE 'Papa Johns') pi
            JOIN (SELECT * FROM menu WHERE price < 800) m ON pi.id = m.pizzeria_id
        EXCEPT
        (SELECT pz.id FROM pizzeria pz
            JOIN mv_dmitriy_visits_and_eats md ON pz.name = md.name)
         ORDER BY 1
         LIMIT 1), TIMESTAMP '2022-01-08');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;