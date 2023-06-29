SELECT day_list::date AS missing_date
FROM GENERATE_SERIES(TIMESTAMP '2022-01-01', '2022-01-10', '1 day') AS day_list
         LEFT JOIN (SELECT visit_date
                    FROM person_visits
                    WHERE person_id = 1
                       OR person_id = 2) pv
                   ON day_list = pv.visit_date
WHERE pv.visit_date IS NULL
ORDER BY missing_date;