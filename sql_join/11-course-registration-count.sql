SELECT courses.title, COUNT(registrations.student_id)
FROM courses
LEFT JOIN registrations ON registrations.course_id = courses.id
GROUP BY courses.title
ORDER BY COUNT(registrations.student_id) DESC, courses.title ASC