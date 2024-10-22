CREATE DATABASE midtest;

CREATE TABLE course (
	id int,
	name varchar(25),
	teacher_id int
);

CREATE TABLE student (
	id int,
	first_name varchar(25),
	last_name varchar(25)
);

CREATE TABLE student_course(
	student_id int,
	course_id int
);

CREATE TABLE teacher(
	id bigserial,
	first_name varchar(25),
	last_name varchar(50)
)

INSERT INTO course (id, name, teacher_id)
VALUES (1, 'Database design', 1),
		(2, 'English literature', 2),
		(3, 'Python programming', 1);
		
INSERT INTO student (id, first_name, last_name)
VALUES (1, 'Shreya', 'Bain'),
		(2, 'Rianna', 'Foster'),
		(3, 'Yosef', 'Naylor');

INSERT INTO student_course (student_id, course_id)
VALUES (1, 2),
	(1, 3),
	(2, 1),
	(2, 2),
	(2, 3),
	(3, 1);

INSERT INTO teacher (id, first_name, last_name)
VALUES (1, 'Taylah', 'Booker'),
		(2, 'Sarah-Louise', 'Blake');

SELECT * FROM student LEFT JOIN student_course
ON student.id = student_course.student_id

SELECT * FROM teacher RIGHT JOIN course
ON teacher.id = course.teacher_id

SELECT * FROM course INNER JOIN student_course
ON course.id = student_course.course_id

SELECT student.first_name, student.last_name 
FROM student, student_course
WHERE student_course.course_id = 1;


SELECT last_name FROM student JOIN teacher AS a
WHERE a.last_name LIKE 'B%';








