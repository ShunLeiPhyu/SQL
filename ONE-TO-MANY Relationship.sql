-- Drop tables if they exist
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS author;

-- Create the `author` table
CREATE TABLE author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create the `book` table
CREATE TABLE book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

-- Insert data into `author`
INSERT INTO author (name) VALUES ('John Smith'), ('Jane Doe');

-- Insert data into `book`
INSERT INTO book (title, author_id) VALUES 
('Sci-Fi Adventures', 1),
('Future Worlds', 1),
('Modern Poetry', 2);

-- Retrieve books and their authors
SELECT b.book_id, b.title, a.name AS author_name
FROM book b
INNER JOIN author a ON b.author_id = a.author_id;
