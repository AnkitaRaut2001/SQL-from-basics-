create  database schooldb;
use schooldb;

CREATE TABLE students (
  student_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT,
  gender VARCHAR(10),
  city VARCHAR(50)
);

CREATE TABLE teachers (
  teacher_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  subject VARCHAR(50),
  experience INT
);

CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50),
  teacher_id INT,
  FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

CREATE TABLE classes (
  class_id INT PRIMARY KEY,
  class_name VARCHAR(20),
  room_number INT
);

CREATE TABLE enrollments (
  enroll_id INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  enroll_date DATE,
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);





