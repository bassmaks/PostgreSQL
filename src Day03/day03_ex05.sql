SELECT pi.name AS pizzeria_name
FROM (SELECT * FROM person WHERE name = 'Andrey') p
    JOIN person_visits pv ON pv.person_id = p.id
    JOIN pizzeria pi ON pi.id = pv.pizzeria_id
EXCEPT
SELECT pi.name AS pizzeria_name
FROM (SELECT * FROM person WHERE name = 'Andrey') p
    JOIN person_order po ON po.person_id = p.id
    JOIN menu m ON m.id = po.menu_id
    JOIN pizzeria pi ON pi.id = m.pizzeria_id;
