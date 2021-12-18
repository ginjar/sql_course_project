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

ALTER TABLE `sql_course_database`.`university_professor` 
DROP FOREIGN KEY `professor_student_id`,
DROP FOREIGN KEY `professor_course_id`;
ALTER TABLE `sql_course_database`.`university_professor` 
DROP COLUMN `professor_grade_value`,
DROP COLUMN `professor_course_id`,
DROP COLUMN `professor_student_id`,
DROP INDEX `professor_grade_value_idx` ,
DROP INDEX `professor_course_id_idx` ,
DROP INDEX `professor_student_id_idx` ;
ALTER TABLE `sql_course_database`.`university_student` 
DROP FOREIGN KEY `student_professor_id`,
DROP FOREIGN KEY `student_course_id`;
ALTER TABLE `sql_course_database`.`university_student` 
DROP COLUMN `student_professor_id`,
DROP COLUMN `student_grade_id`,
DROP COLUMN `student_course_id`,
DROP INDEX `student_professor_id_idx` ,
DROP INDEX `student_grade_id_idx` ,
DROP INDEX `student_course_id_idx` ;
;
ALTER TABLE `sql_course_database`.`university_grades` 
DROP FOREIGN KEY `grade_student_id`,
DROP FOREIGN KEY `grade_professor_id`,
DROP FOREIGN KEY `grade_course_id`;
ALTER TABLE `sql_course_database`.`university_grades` 
DROP COLUMN `grade_professor_id`,
DROP COLUMN `grade_course_id`,
DROP COLUMN `grade_student_id`,
ADD COLUMN `grades` INT NOT NULL AFTER `grade_value`,
DROP INDEX `grade_professor_id_idx` ,
DROP INDEX `grade_course_id_idx` ,
DROP INDEX `grade_student_id_idx` ;
;
UPDATE `sql_course_database`.`university_grades` SET `grades` = 'F' WHERE (`grade_value` = '50');
UPDATE `sql_course_database`.`university_grades` SET `grades` = 'D' WHERE (`grade_value` = '60');
UPDATE `sql_course_database`.`university_grades` SET `grades` = 'C' WHERE (`grade_value` = '70');
UPDATE `sql_course_database`.`university_grades` SET `grades` = 'B' WHERE (`grade_value` = '80');
UPDATE `sql_course_database`.`university_grades` SET `grades` = 'A' WHERE (`grade_value` = '90');
ALTER TABLE `sql_course_database`.`university_grades` 
ADD COLUMN `grades_professor_id` INT NULL AFTER `grades`,
ADD COLUMN `grades_course_id` INT NULL AFTER `grades_professor_id`,
ADD COLUMN `grades_student_id` INT NULL AFTER `grades_course_id`,
ADD INDEX `grades_course_id_idx` (`grades_course_id` ASC) VISIBLE,
ADD INDEX `student_id_idx` (`grades_student_id` ASC) VISIBLE,
ADD INDEX `professor_id_idx` (`grades_professor_id` ASC) VISIBLE;
;
ALTER TABLE `sql_course_database`.`university_grades` 
ADD CONSTRAINT `course_id`
  FOREIGN KEY (`grades_course_id`)
  REFERENCES `sql_course_database`.`university_course` (`course_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `student_id`
  FOREIGN KEY (`grades_student_id`)
  REFERENCES `sql_course_database`.`university_student` (`student_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `professor_id`
  FOREIGN KEY (`grades_professor_id`)
  REFERENCES `sql_course_database`.`university_professor` (`professor_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
UPDATE `sql_course_database`.`university_grades` SET `grades_professor_id` = '101', `grades_course_id` = '1050', `grades_student_id` = '4' WHERE (`grade_value` = '50');
UPDATE `sql_course_database`.`university_grades` SET `grades_professor_id` = '102', `grades_course_id` = '1010', `grades_student_id` = '2' WHERE (`grade_value` = '60');
UPDATE `sql_course_database`.`university_grades` SET `grades_professor_id` = '103', `grades_course_id` = '1020', `grades_student_id` = '3' WHERE (`grade_value` = '70');
UPDATE `sql_course_database`.`university_grades` SET `grades_professor_id` = '104', `grades_course_id` = '1030', `grades_student_id` = '5' WHERE (`grade_value` = '80');
UPDATE `sql_course_database`.`university_grades` SET `grades_professor_id` = '105', `grades_course_id` = '1040', `grades_student_id` = '1' WHERE (`grade_value` = '90');
