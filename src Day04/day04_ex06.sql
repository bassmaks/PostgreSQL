CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pi.name
FROM (SELECT  * FROM person WHERE name = 'Dmitriy') p
    JOIN (SELECT * FROM person_visits WHERE visit_date = '2022-01-08') pv ON pv.person_id = p.id
    JOIN pizzeria pi ON pi.id = pv.pizzeria_id
    JOIN (SELECT * FROM menu WHERE price < 800) m ON m.pizzeria_id = pi.id;
