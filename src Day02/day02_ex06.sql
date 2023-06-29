SELECT pizza_name, pi.name AS pizzeria_name
FROM pizzeria pi
         JOIN menu m ON pi.id = m.pizzeria_id
         JOIN person_order po ON po.menu_id = m.id
         JOIN (SELECT * FROM person WHERE person.name IN ('Denis', 'Anna')) p ON po.person_id = p.id
ORDER BY pizza_name, pizzeria_name;

