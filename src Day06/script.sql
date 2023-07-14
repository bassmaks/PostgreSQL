--7
INSERT INTO menu
VALUES (19, 2, 'greek pizza', 800);
--8
INSERT INTO menu
VALUES ((SELECT MAX(id) FROM menu) + 1,
        (SELECT pi.id FROM pizzeria pi WHERE pi.name = 'Dominos'),
        'sicilian pizza',
        900);
--9
INSERT INTO person_visits
VALUES ((SELECT MAX(id) FROM person_visits) + 1,
        (SELECT p.id FROM person p WHERE p.name = 'Denis'),
        (SELECT pi.id FROM pizzeria pi WHERE pi.name = 'Dominos'),
        (TIMESTAMP '2022-02-24')::date),
       ((SELECT MAX(id) FROM person_visits) + 2,
        (SELECT p.id FROM person p WHERE p.name = 'Irina'),
        (SELECT pi.id FROM pizzeria pi WHERE pi.name = 'Dominos'),
        TIMESTAMP '2022-02-24');
--10
INSERT INTO person_order
VALUES ((SELECT MAX(id) FROM person_order) + 1,
        (SELECT p.id FROM person p WHERE p.name = 'Denis'),
        (SELECT m.id FROM menu m WHERE m.pizza_name = 'sicilian pizza'),
        TIMESTAMP '2022-02-24'),
       ((SELECT MAX(id) FROM person_order) + 2,
        (SELECT p.id FROM person p WHERE p.name = 'Irina'),
        (SELECT m.id FROM menu m WHERE m.pizza_name = 'sicilian pizza'),
        TIMESTAMP '2022-02-24');
--11
UPDATE menu
SET price = price * 0.9
WHERE pizza_name = 'greek pizza';
--12
INSERT INTO person_order
SELECT (GENERATE_SERIES(((SELECT MAX(id) FROM person_order) + 1),
                        ((SELECT MAX(id) FROM person_order) + (SELECT COUNT(*) FROM person)))),
       (GENERATE_SERIES((SELECT MIN(id) FROM person), (SELECT MAX(id) FROM person))),
       (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
       TIMESTAMP '2022-02-25';
--13
DELETE FROM person_order
WHERE order_date  =  '2022-02-25';

DELETE FROM menu
WHERE pizza_name = 'greek pizza';
--day4_ex07


