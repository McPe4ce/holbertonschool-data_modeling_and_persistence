SELECT instructors.name
FROM instructors
INNER JOIN courses On courses.instructor_id = instructors.id
GROUP BY instructors.name
ORDER BY instructors.name ASC