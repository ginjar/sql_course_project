SELECT course_id AS 'Course', AVG(grades) AS 'Average Grade'
FROM university_grades g
JOIN university_course c 
ON g.grades_course_id = course_id
GROUP BY course_id
ORDER BY AVG(grades) ASC;

