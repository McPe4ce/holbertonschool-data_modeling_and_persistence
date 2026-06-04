SELECT courses.title AS course_title
FROM courses
WHERE COUNT(student_id) > (
    SELECT COUNT(student_id) AS enrollements_count
    FROM enrollments
    GROUP BY course_id
)
ORDER BY courses.title ASC