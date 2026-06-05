SELECT instructors.name, courses.title
FROM courses
RIGHT JOIN instructors ON instructors.id = courses.instructor_id
ORDER BY instructors.name ASC, courses.title ASC