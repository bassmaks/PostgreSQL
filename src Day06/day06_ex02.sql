SELECT p.name,
       m.pizza_name,
       m.price,
       m.price - (m.price * pd.discount)/100 AS discount_price,
       pi.name AS pizzeria_name
FROM person_order po
         JOIN person p ON p.id = po.person_id
         JOIN menu m ON po.menu_id = m.id
         JOIN pizzeria pi ON m.pizzeria_id = pi.id
         JOIN person_discounts pd ON po.person_id = pd.person_id AND pi.id = pd.pizzeria_id
ORDER BY 1, 2;