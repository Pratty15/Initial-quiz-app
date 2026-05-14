CREATE DATABASE IF NOT EXISTS quiz_db;
USE quiz_db;

CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(255),
    option1 VARCHAR(100),
    option2 VARCHAR(100),
    option3 VARCHAR(100),
    option4 VARCHAR(100),
    correct INT
);

INSERT INTO questions (question, option1, option2, option3, option4, correct) VALUES
('Which planet is known as Red Planet?', 'Earth', 'Mars', 'Jupiter', 'Saturn', 2),
('Who developed C language?', 'Dennis Ritchie', 'Bjarne Stroustrup', 'James Gosling', 'Guido van Rossum', 1),
('HTML stands for?', 'Hyper Text Markup Language', 'High Text Machine Language', 'Hyper Tool Markup Language', 'None', 1),
('Which data structure uses FIFO?', 'Stack', 'Queue', 'Tree', 'Graph', 2),
('Capital of India?', 'Delhi', 'Mumbai', 'Chennai', 'Kolkata', 1),
('2+2=?', '3', '4', '5', '6', 2);