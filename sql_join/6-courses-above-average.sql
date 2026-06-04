SELECT courses.title AS course_title
FROM courses
WHERE courses.id IN (
    SELECT course_id
    FROM enrollments
    GROUP BY course_id
    HAVING COUNT(student_id) > (
        SELECT AVG(enrollment_count)
        FROM (
            SELECT COUNT(student_id) AS enrollment_count
            FROM enrollments
            GROUP BY course_id
        )
    )
)
ORDER BY course_title ASC
