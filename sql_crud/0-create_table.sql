CREATE TABLE books (
    id INT PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    genre TEXT NOT NULL,
    price MONEY NOT NULL,
    stock INT,
    published_year INT NOT NULL
);

