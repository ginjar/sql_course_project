SELECT professor_id AS 'Professor', AVG(grades) AS 'Average Grade'
FROM university_grades g
JOIN university_professor p
ON g.grades_professor_id = professor_id
GROUP BY professor_name;