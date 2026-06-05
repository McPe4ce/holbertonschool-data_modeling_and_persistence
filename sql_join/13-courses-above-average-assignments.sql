SELECT courses.title
FROM courses
INNER JOIN assignments ON assignments.course_id = courses.id
GROUP BY courses.title
HAVING COUNT(assignments.id) > (
        --AVG number of assignments across all courses
    SELECT AVG(course_assignments)
    FROM (
        --Counts how many assignments each course has
        SELECT COUNT(id) as course_assignments
        FROM assignments
        GROUP BY course_id
    )
)
ORDER BY courses.title ASC