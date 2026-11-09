CREATE TABLE artists (
    artist TEXT PRIMARY KEY,
    nationality TEXT,
    debut_year INTEGER,
    artist_type TEXT
);

CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    album_name TEXT,
    artist TEXT,
    genre TEXT,
    release_year INTEGER,
    FOREIGN KEY (artist) REFERENCES artists(artist)
