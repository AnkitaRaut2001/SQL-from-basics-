select * from student;

INSERT INTO student VALUES
(1, 'arjun',22,'female','pune'),
(2,'Ravi',23,'male','mumbai'),
(3,'Sneha',21,'female','nashik'),
(4,'Amit',24,'male','pune'),
(5,'Neha',22,'female','delhi');

select * from student;

INSERT INTO teacher VALUES
(101,'Sharma sir','Math',10),
(102,'Patil Mam','Science',8),
(103,'Joshi Sir','English',6);

select * from teacher;

INSERT INTO courses values
(201, 'Mathematics',101),
(202, 'Science',102),
(203, 'English',103);

select * from courses;

INSERT INTO classes values
(301,'Class A', 101),
(302,'Class B',102),
(303,'Class C',103);

select * from classes;

insert into enrollments values
(1,1,201,'2026-01-01'),
(2,2,202,'2026-01-02'),
(3,3,203,'2026-01-03'),
(4,4,201,'2026-01-04'),
(5,5,202,'2026-01-05');

SHOW TABLES;

show create table enrollments;

drop table enrollments;

CREATE TABLE enrollments (
  enroll_id INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  enroll_date DATE,
  FOREIGN KEY (student_id) REFERENCES student(student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

insert into enrollments values
(1,1,201,'2026-01-01'),
(2,2,202,'2026-01-02'),
(3,3,203,'2026-01-03'),
(4,4,201,'2026-01-04'),
(5,5,202,'2026-01-05');