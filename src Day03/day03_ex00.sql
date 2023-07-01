SELECT m.pizza_name,
       m.price,
       pi.name AS pizzeria_name,
       pv.visit_date
FROM (SELECT * FROM person WHERE name = 'Kate') p
         JOIN person_visits pv ON pv.person_id = p.id
         JOIN pizzeria pi ON pi.id = pv.pizzeria_id
         JOIN menu m ON m.pizzeria_id = pv.pizzeria_id
WHERE price BETWEEN 800 AND 1000
ORDER BY 1, 2, 3;