CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    genre TEXT NOT NULL,
    price MONEY NOT NULL,
    stock INTEGER,
    published_year INTEGER NOT NULL
);

