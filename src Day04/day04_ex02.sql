CREATE VIEW v_generated_dates AS
SELECT days_list::date AS generated_date
FROM GENERATE_SERIES(TIMESTAMP '2022-01-01', '2022-01-31', '1 day') days_list
ORDER BY 1;