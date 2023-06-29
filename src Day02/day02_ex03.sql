WITH visits AS (SELECT visit_date
                FROM person_visits
                WHERE person_id = 1
                   OR person_id = 2),
     dates AS (SELECT day_list::date AS missing_date
               FROM GENERATE_SERIES(TIMESTAMP '2022-01-01', '2022-01-10', '1 day') AS day_list)
SELECT dates.missing_date
FROM dates
         LEFT JOIN visits ON dates.missing_date = visits.visit_date
WHERE visit_date IS NULL
ORDER BY missing_date;

