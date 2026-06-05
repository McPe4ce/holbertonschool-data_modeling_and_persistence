SELECT instructors.name, courses.title
FROM instructors
LEFT JOIN courses ON courses.id = instructors.id
ORDER BY instructors.name ASC, courses.title ASC