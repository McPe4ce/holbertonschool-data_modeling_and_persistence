SELECT courses.title, instructors.name
FROM courses
INNER JOIN instructors ON instructors.id = courses.instructor_id
ORDER BY courses.title ASC