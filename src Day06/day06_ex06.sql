CREATE SEQUENCE seq_person_discounts START 1 INCREMENT BY 1;
SELECT SETVAL('seq_person_discounts', (SELECT COUNT(*) FROM person_discounts));
ALTER TABLE person_discounts
    ALTER COLUMN id SET DEFAULT NEXTVAL('seq_person_discounts');

SELECT SETVAL('seq_person_discounts', (SELECT COUNT(*) FROM person_discounts));
INSERT INTO person_discounts (person_id, pizzeria_id, discount)
VALUES (6, 6, 6);

--DELETE FROM person_discounts WHERE discount = 6;