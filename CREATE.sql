CREATE TABLE IF NOT EXISTS genre(
genre_id SERIAL PRIMARY KEY,
name VARCHAR(30) NOT NULL);

CREATE TABLE IF NOT EXISTS artists(
artist_id SERIAL PRIMARY KEY,
name_pseudonym VARCHAR(30) NOT NULL);

CREATE TABLE IF NOT EXISTS albums(
albums_id SERIAL PRIMARY KEY,
name VARCHAR(30),
manufacture DATE NOT NULL);

CREATE TABLE IF NOT EXISTS track(
track_id SERIAL PRIMARY KEY,
name VARCHAR(80) NOT NULL,
duration TIME NOT NULL,
album INT NOT NULL REFERENCES albums(albums_id));

CREATE TABLE IF NOT EXISTS collection(
collection_id SERIAL PRIMARY KEY,
name varchar(30) NOT NULL,
manufacture DATE NOT NULL);

CREATE TABLE IF NOT EXISTS genre_to_artists(
genre_id INT NOT NULL REFERENCES genre(genre_id),
artist_id INT NOT NULL REFERENCES artists(artist_id)
);

CREATE TABLE IF NOT EXISTS artists_to_albums(
artist_id INT NOT NULL REFERENCES artists(artist_id),
albums_id INT NOT NULL REFERENCES albums(albums_id)
);

CREATE TABLE IF NOT EXISTS track_to_collection(
track_id INT NOT NULL REFERENCES track(track_id),
collection_id INT NOT NULL REFERENCES collection(collection_id)
);