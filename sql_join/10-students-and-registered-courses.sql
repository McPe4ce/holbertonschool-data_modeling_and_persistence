SELECT students.name, courses.title
FROM students
INNER JOIN registrations ON registrations.student_id = students.id
INNER JOIN courses ON courses.id = registrations.course_id
ORDER BY students.name ASC, courses.title ASC

