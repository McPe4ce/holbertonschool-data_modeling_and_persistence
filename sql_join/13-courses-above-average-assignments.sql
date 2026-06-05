SELECT courses.title
FROM courses
INNER JOIN registrations ON registrations.course_id = courses.id
GROUP BY courses.title
HAVING COUNT(registrations.student_id) > (
        --AVG courses taken by all students
    SELECT AVG(students_registrations)
    FROM (
        --Counts how many courses are taken by each students
        SELECT COUNT(registrations.student_id) as students_registrations
        FROM registrations
        GROUP BY registrations.course_id
    )
)
ORDER BY courses.title ASC