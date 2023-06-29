SELECT p.name       AS person_name,
       m.pizza_name AS pizza_name,
       pi.name      AS pizzeria_name
FROM person p
         JOIN person_order po ON po.person_id = p.id
         JOIN menu m ON m.id = po.menu_id
         JOIN pizzeria pi ON pi.id = m.pizzeria_id
ORDER BY person_name, pizza_name, pizzeria_name;
