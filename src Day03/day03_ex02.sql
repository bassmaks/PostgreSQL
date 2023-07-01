WITH excepts AS (SELECT m.id AS menu_id FROM menu m
                EXCEPT
                SELECT po.menu_id FROM person_order po
                ORDER BY 1),
     pizza AS (SELECT * FROM menu
            RIGHT JOIN excepts ON menu.id = excepts.menu_id)
SELECT pizza.pizza_name,
       pizza.price,
       pi.name AS pizzeria_name
FROM pizza
         JOIN pizzeria pi ON pizza.pizzeria_id = pi.id
ORDER BY 1, 2;