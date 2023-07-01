WITH one AS (SELECT m.pizza_name, pi.name, m.price, pi.id FROM menu m
                        JOIN pizzeria pi ON pi.id = m.pizzeria_id)
SELECT two.pizza_name,
       two.name   AS pizzeria_name_1,
       one.name AS pizzeria_name_2,
       two.price
FROM (SELECT * FROM one) AS two
         JOIN one ON two.price = one.price AND two.pizza_name = one.pizza_name AND two.id > one.id
ORDER BY 1;