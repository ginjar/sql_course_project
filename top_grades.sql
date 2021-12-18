SELECT student_id AS "Student", course_id AS "Course", grades AS "Grade"
FROM university_grades g
JOIN university_student s
ON g.grades_student_id = student_id
JOIN university_course 
ON g.grades_course_id = course_id
ORDER BY grades ASC;