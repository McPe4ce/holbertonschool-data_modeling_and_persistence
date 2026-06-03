SELECT students.name
FROM students
WHERE id IN (
    SELECT student_id
    FROM enrollments
    GROUP BY student_id
    HAVING COUNT(enrollments.student_id) >= 1
)
ORDER BY students.name ASC