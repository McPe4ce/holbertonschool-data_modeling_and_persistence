SELECT students.name
FROM students
INNER JOIN registrations ON registrations.student_id = students.id
INNER JOIN courses ON courses.id = registrations.course_id
GROUP BY registrations.student_id
ORDER BY students.name ASC