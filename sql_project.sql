use sql_course_database;

INSERT INTO university_professor(professor_id, professor_name)
Values (101,"thomas");
INSERT INTO university_professor(professor_id, professor_name)
Values (102,"nelson");
INSERT INTO university_professor(professor_id, professor_name)
Values (103,"johnston");
INSERT INTO university_professor(professor_id, professor_name)
Values (104,"Reynolds");
INSERT INTO university_professor(professor_id, professor_name)
Values (105,"Petersen");
Select * from university_professor;
INSERT INTO university_grades(grade_value)
Values("A");
INSERT INTO university_grades(grade_value)
Values("B");
INSERT INTO university_grades(grade_value)
Values("C");
INSERT INTO university_grades(grade_value)
Values("D");
INSERT INTO university_grades(grade_value)
Values("F");
Select * from (university_grades);
INSERT INTO university_course(course_id)
Values ("1010");
INSERT INTO university_course(course_id)
Values ("1020");
INSERT INTO university_course(course_id)
Values ("1030");
INSERT INTO university_course(course_id)
Values ("1040");
INSERT INTO university_course(course_id)
Values ("1050");
INSERT INTO university_course(course_id)
Values ("1060");
UPDATE `sql_course_database`.`university_course` SET `course_professor_id` = '105', `course_student_id` = '1', `course_grade_value` = 'A' WHERE (`course_id` = '1040');
UPDATE `sql_course_database`.`university_course` SET `course_professor_id` = '102', `course_student_id` = '2', `course_grade_value` = 'A' WHERE (`course_id` = '1010');
UPDATE `sql_course_database`.`university_course` SET `course_professor_id` = '105', `course_student_id` = '3', `course_grade_value` = 'B' WHERE (`course_id` = '1020');
UPDATE `sql_course_database`.`university_course` SET `course_professor_id` = '103', `course_student_id` = '1', `course_grade_value` = 'A' WHERE (`course_id` = '1050');
UPDATE `sql_course_database`.`university_course` SET `course_professor_id` = '102', `course_student_id` = '4', `course_grade_value` = 'F' WHERE (`course_id` = '1060');
UPDATE `sql_course_database`.`university_course` SET `course_professor_id` = '104', `course_student_id` = '5', `course_grade_value` = 'B' WHERE (`course_id` = '1030');
UPDATE `sql_course_database`.`university_student` SET `student_course_id` = '1040', `student_grade_id` = 'A', `student_professor_id` = '105' WHERE (`student_id` = '1');
UPDATE `sql_course_database`.`university_student` SET `student_course_id` = '1010', `student_grade_id` = 'A', `student_professor_id` = '102' WHERE (`student_id` = '2');
UPDATE `sql_course_database`.`university_student` SET `student_course_id` = '1020', `student_grade_id` = 'B', `student_professor_id` = '105' WHERE (`student_id` = '3');
UPDATE `sql_course_database`.`university_student` SET `student_course_id` = '1010', `student_grade_id` = 'F', `student_professor_id` = '101' WHERE (`student_id` = '4');
UPDATE `sql_course_database`.`university_student` SET `student_course_id` = '1030', `student_grade_id` = 'B', `student_professor_id` = '104' WHERE (`student_id` = '5');
UPDATE `sql_course_database`.`university_professor` SET `professor_student_id` = '4', `professor_course_id` = '1010', `professor_grade_value` = 'F' WHERE (`professor_id` = '101');
UPDATE `sql_course_database`.`university_professor` SET `professor_student_id` = '2', `professor_course_id` = '1010', `professor_grade_value` = 'A' WHERE (`professor_id` = '102');
UPDATE `sql_course_database`.`university_professor` SET `professor_student_id` = '1', `professor_course_id` = '1040', `professor_grade_value` = 'A' WHERE (`professor_id` = '103');
UPDATE `sql_course_database`.`university_professor` SET `professor_student_id` = '5', `professor_course_id` = '1030', `professor_grade_value` = 'B' WHERE (`professor_id` = '104');
UPDATE `sql_course_database`.`university_professor` SET `professor_student_id` = '3', `professor_course_id` = '1020', `professor_grade_value` = 'A' WHERE (`professor_id` = '105');
UPDATE `sql_course_database`.`university_student` SET `student_grade_id` = '90' WHERE (`student_id` = '1');
UPDATE `sql_course_database`.`university_student` SET `student_grade_id` = '90' WHERE (`student_id` = '2');
UPDATE `sql_course_database`.`university_student` SET `student_grade_id` = '80' WHERE (`student_id` = '3');
UPDATE `sql_course_database`.`university_student` SET `student_grade_id` = '50' WHERE (`student_id` = '4');
select avg(professor_grade_value) from
university_professor;

select * from university_course c
right join university_student s
on c.course_student_id = s.student_id;