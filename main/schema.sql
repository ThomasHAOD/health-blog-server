DROP TABLE posts;
DROP TABLE users;

CREATE TABLE users
(
    uid SERIAL8 PRIMARY KEY,
    username VARCHAR(255) UNIQUE,
    email VARCHAR(255),
    date_created DATE,
    last_login DATE
);

CREATE TABLE posts
(
    pid SERIAL PRIMARY KEY,
    title VARCHAR(255),
    body VARCHAR,
    user_id INT8 REFERENCES users(uid),
    author VARCHAR REFERENCES users(username),
    date_created TIMESTAMP
);