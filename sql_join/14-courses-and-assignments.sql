SELECT courses.title, assignments.title
FROM assignments
RIGHT JOIN courses ON courses.id = assignments.course_id
ORDER BY courses.title ASC, assignments.title ASC