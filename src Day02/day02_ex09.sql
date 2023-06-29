WITH pp AS (SELECT * FROM (SELECT po.person_id, m.pizza_name FROM menu m
                            RIGHT JOIN  person_order po on m.id = po.menu_id
                            WHERE pizza_name = 'pepperoni pizza') AS PPP),
     pc AS (SELECT * FROM (SELECT po.person_id, m.pizza_name FROM menu m
                            RIGHT JOIN  person_order po on m.id = po.menu_id
                            WHERE pizza_name = 'cheese pizza') AS CCC)
SELECT p.name
FROM (SELECT * FROM person WHERE gender = 'female') p
    JOIN pp ON pp.person_id = p.id
    JOIN pc ON pc.person_id = p.id
ORDER BY p.name;
