SELECT name
FROM books INNER JOIN authors ON books.author_id = authors.id
ORDER BY title ASC