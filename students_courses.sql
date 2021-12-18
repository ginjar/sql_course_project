
SELECT student_id AS "Student", course_id AS "Course"
From university_course c
JOIN university_student s
ON c.course_student_id = student_id
ORDER BY course_id;
