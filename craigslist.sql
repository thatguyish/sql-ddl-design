DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    preffered_region VARCHAR(20)
);

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    region VARCHAR(20),
    title VARCHAR(20),
    contents TEXT,
    original_poster INT REFERENCES users,
    location VARCHAR(50)
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    name VARCHAR(15)
);

CREATE TABLE posts_categories(
    post_id INT REFERENCES posts,
    category_id INT REFERENCES categories
);
