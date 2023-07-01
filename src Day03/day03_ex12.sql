INSERT INTO person_order
SELECT (GENERATE_SERIES(((SELECT MAX(id) FROM person_order) + 1),
                        ((SELECT MAX(id) FROM person_order) + (SELECT COUNT(*) FROM person)))),
       (GENERATE_SERIES((SELECT MIN(id) FROM person), (SELECT MAX(id) FROM person))),
       (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
       TIMESTAMP '2022-02-25';