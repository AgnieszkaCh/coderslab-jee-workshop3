CREATE DATABASE IF NOT EXISTS bootcamp;

USE bootcamp;

CREATE TABLE IF NOT EXISTS groups(
     id INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO groups(name) VALUES('WAW_JEE_S_01');
INSERT INTO groups(name) VALUES('KRK_PYT_W_01');

CREATE TABLE IF NOT EXISTS users(
     id INT PRIMARY KEY AUTO_INCREMENT,
     email VARCHAR(50) UNIQUE,
     password VARCHAR(50) NOT NULL,
     first_name VARCHAR(20) NOT NULL,
     last_name VARCHAR(20) NOT NULL,
     group_id INT,
     FOREIGN KEY (group_id) REFERENCES groups(id)
);

INSERT INTO users(email, password, first_name, last_name, group_id) VALUES('john.doe@yahoo.com', SHA1('s3cret'), 'John', 'Doe', 1);
INSERT INTO users(email, password, first_name, last_name, group_id) VALUES('jan.kowalski@poczta.pl', SHA1('aqq123'), 'Jan', 'Kowalski', 2);

CREATE TABLE IF NOT EXISTS exercises(
     id INT PRIMARY KEY AUTO_INCREMENT,
     title VARCHAR(50),
     description VARCHAR(50)
);

INSERT INTO exercises(title, description) VALUES('Zadanie1', 'lorem ipsum dolor sit amet');
INSERT INTO exercises(title, description) VALUES('Zadanie2', 'consectetur adipisicing elit');
INSERT INTO exercises(title, description) VALUES('Zadanie3', 'ut enim ad minim veniam');

CREATE TABLE IF NOT EXISTS solutions(
     created_at DATETIME NOT NULL,
     updated_at DATETIME NOT NULL,
     content TEXT,
     exercise_id INT,
     user_id INT,
     FOREIGN KEY (exercise_id) REFERENCES exercises(id),
     FOREIGN KEY (user_id) REFERENCES users(id),
     PRIMARY KEY (user_id, exercise_id)
);

INSERT INTO solutions(created_at, updated_at, content, exercise_id, user_id) VALUES(NOW(), NOW(), 'class Main1 {...}', 1, 1);
INSERT INTO solutions(created_at, updated_at, content, exercise_id, user_id) VALUES(NOW(), NOW(), 'class Main2 {...}', 2, 1);
INSERT INTO solutions(created_at, updated_at, content, exercise_id, user_id) VALUES(NOW(), NOW(), 'class Main3 {...}', 3, 1);
INSERT INTO solutions(created_at, updated_at, content, exercise_id, user_id) VALUES(NOW(), NOW(), 'class Main_1 {...}', 1, 2);
