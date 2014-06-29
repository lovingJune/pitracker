DROP TABLE IF EXISTS "member" CASCADE;

CREATE TABLE "member" (
       id serial PRIMARY KEY,
       username TEXT,
       password TEXT
);

DROP TABLE IF EXISTS "project" CASCADE;

CREATE TABLE "project" (
       id serial PRIMARY KEY,
       name TEXT,
       description TEXT,
       archived BOOLEAN DEFAULT FALSE
);

DROP TABLE IF EXISTS "item" CASCADE;

CREATE TABLE "item" (
       id SERIAL PRIMARY KEY,
       title TEXT,
       description TEXT
);

DROP TABLE IF EXISTS "comment" CASCADE;

CREATE TABLE "comment" (
       id BIGSERIAL PRIMARY KEY,
       content TEXT,
       item_id BIGINT REFERENCES item(id)
);