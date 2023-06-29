SELECT one.name    AS person_name1,
       two.name    AS person_name2,
       one.address AS common_address
FROM person one
         JOIN person two ON one.address = two.address
WHERE one.id > two.id
ORDER BY person_name1, person_name2, common_address;