SELECT p.name
FROM person p
         JOIN person_order po ON po.person_id = p.id
         JOIN menu m ON po.menu_id = m.id
WHERE p.gender = 'male'
  AND (p.address = 'Moscow' OR p.address = 'Samara')
  AND (m.pizza_name = 'pepperoni pizza' OR m.pizza_name = 'mushroom pizza')
ORDER BY p.name DESC;

