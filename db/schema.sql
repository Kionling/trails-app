DROP DATABASE IF EXISTS trails_db;
CREATE DATABASE trails_db;
USE trails_db;
CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE trails (
  id INT NOT NULL AUTO_INCREMENT,
  trail_name VARCHAR(50) NOT NULL,
  trail_location VARCHAR(50) NOT NULL,
  trail_length VARCHAR(50) NOT NULL,
  trail_difficulty VARCHAR(50) NOT NULL,
  trail_description VARCHAR(50) NOT NULL,
  trail_image VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE comments (
  id INT NOT NULL AUTO_INCREMENT,
  comment VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE user_comments (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  comment_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (comment_id) REFERENCES comments(id)
);
CREATE TABLE trail_comments (
  id INT NOT NULL AUTO_INCREMENT,
  trail_id INT NOT NULL,
  comment_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (trail_id) REFERENCES trails(id),
  FOREIGN KEY (comment_id) REFERENCES comments(id)
);
CREATE TABLE user_trails (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  trail_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (trail_id) REFERENCES trails(id)
);