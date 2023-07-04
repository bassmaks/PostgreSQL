SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE
SELECT m.pizza_name,
       pi.name
FROM menu m
         JOIN pizzeria pi ON m.pizzeria_id = pi.id;