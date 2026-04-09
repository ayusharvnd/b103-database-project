INSERT INTO students (student_id, first_name, last_name, email, date_of_birth) VALUES
(1, 'Ayush', 'Aravind', 'ayush@example.com', '2005-06-12'),
(2, 'Alice', 'Johnson', 'alice@example.com', '2004-03-15'),
(3, 'Bob', 'Smith', 'bob@example.com', '2003-11-20');

INSERT INTO instructors (instructor_id, first_name, last_name, email, department) VALUES
(101, 'John', 'Miller', 'john.miller@example.com', 'Computer Science'),
(102, 'Emma', 'Brown', 'emma.brown@example.com', 'Mathematics');

INSERT INTO courses (course_id, course_name, credits, instructor_id) VALUES
(1001, 'Database Systems', 5, 101),
(1002, 'Python Programming', 5, 101),
(1003, 'Discrete Mathematics', 4, 102);

INSERT INTO enrollments (enrollment_id, student_id, course_id, enrollment_date, grade) VALUES
(5001, 1, 1001, '2026-04-01', 'A'),
(5002, 1, 1002, '2026-04-01', 'B'),
(5003, 2, 1001, '2026-04-02', 'A'),
(5004, 3, 1003, '2026-04-03', 'C');
