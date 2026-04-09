-- 1. View all students
SELECT * FROM students;

-- 2. View all courses
SELECT * FROM courses;

-- 3. Insert a new student
INSERT INTO students (student_id, first_name, last_name, email, date_of_birth)
VALUES (4, 'David', 'Lee', 'david@example.com', '2004-07-10');

-- 4. Update a student's email
UPDATE students
SET email = 'alice.johnson@example.com'
WHERE student_id = 2;

-- 5. Delete an enrollment
DELETE FROM enrollments
WHERE enrollment_id = 5004;

-- 6. Join students with courses
SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

-- 7. Count students in each course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- 8. Show courses with instructor names
SELECT c.course_name, i.first_name, i.last_name
FROM courses c
JOIN instructors i ON c.instructor_id = i.instructor_id;

-- 9. Show students with grade A
SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.grade = 'A';

-- 10. Average credits of all courses
SELECT AVG(credits) AS average_credits
FROM courses;
