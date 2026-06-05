SELECT instructors.name, courses.title
FROM instructors
RIGHT JOIN courses ON courses.id = instructors.id
ORDER BY instructors.name ASC, courses.title ASC