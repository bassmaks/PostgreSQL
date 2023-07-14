COMMENT ON TABLE person_discounts IS 'Denis has the maximum discount price';
COMMENT ON COLUMN person_discounts.id IS 'Discount ID number';
COMMENT ON COLUMN person_discounts.person_id IS 'Person ID number, 4 = Denis';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Pizzeria ID number, equal name from Pizzeria table';
COMMENT ON COLUMN person_discounts.discount IS 'Discount in percent';