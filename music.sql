-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL
);

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(20)
);

CREATE TABLE albums
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(20)
);

CREATE TABLE producers
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(20)
);

CREATE TABLE artists_songs
(
  artist_id INT REFERENCES artists,
  song_id INT REFERENCES songs
);
CREATE TABLE songs_producers
(
  song_id INT REFERENCES songs,
  producer_id INT REFERENCES producers,
);
CREATE TABLE album_songs
(
  album_id INT REFERENCES albums,
  song_id INT REFERENCES songs
);


