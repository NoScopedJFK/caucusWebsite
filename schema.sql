-- Initialize the database.
-- Drop any existing data and create empty tables.

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS candidates;

CREATE TABLE candidate (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  name TEXT NOT NULL,
  bio TEXT NOT NULL,
  img IMAGE NOT NULL,
  numVotes INTEGER DEFAULT 0
);

CREATE TABLE settings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  realign INTEGER NOT NULL,
  numPeople INTEGER NOT NULL
);