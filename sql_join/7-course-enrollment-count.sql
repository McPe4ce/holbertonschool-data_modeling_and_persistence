SELECT courses.title, COUNT(student_id) AS enrollment_count
FROM courses
LEFT JOIN enrollments ON enrollments.course_id = courses.id
GROUP BY courses.title
ORDER BY enrollment_count DESC, courses.title ASC