SELECT m.pizza_name AS pizza_name,
       pi.name      AS pizzeria_name,
       m.price      AS price
FROM pizzeria pi
         JOIN menu m ON pizzeria_id = pi.id
WHERE pizza_name = 'mushroom pizza'
   OR pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, pizzeria_name;