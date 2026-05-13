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
('Capital of India?', 'Delhi', 'Mumbai', 'Chennai', 'Kolkata', 1),
('2+2=?', '3', '4', '5', '6', 2);