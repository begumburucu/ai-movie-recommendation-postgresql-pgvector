CREATE TABLE movies(
    movieid INTEGER,
    title TEXT,
    genres TEXT
);

CREATE TABLE ratings(
    userid INTEGER,
    movieid INTEGER,
    rating NUMERIC,
    timestamp BIGINT
);
