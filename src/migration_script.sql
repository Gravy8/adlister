USE adlister_db;

CREATE TABLE if NOT EXISTS users(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(15),
  email VARCHAR(20),
  password VARCHAR(20),
  PRIMARY KEY (id)
);
CREATE TABLE if NOT EXISTS ads(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED,
  title VARCHAR(25),
  description VARCHAR(250),
  FOREIGN KEY (user_id) REFERENCES users (id),
  PRIMARY KEY (id)
);