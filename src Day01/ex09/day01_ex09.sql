SELECT pi.name AS name
FROM pizzeria pi
WHERE pi.id NOT IN
      (SELECT DISTINCT pv.pizzeria_id
       FROM person_visits pv);

SELECT pi.name AS name
FROM pizzeria pi
WHERE NOT EXISTS(SELECT *
                 FROM person_visits pv
                 WHERE pi.id = pv.pizzeria_id);