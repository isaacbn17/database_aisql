-- Enable foreign keys (must be turned on in SQLite)
PRAGMA foreign_keys = ON;

CREATE TABLE address (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    street TEXT NOT NULL,
    city TEXT NOT NULL,
    zip_code TEXT NOT NULL,
    state TEXT NOT NULL
);

CREATE TABLE race (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    distance REAL NOT NULL,
    date TEXT NOT NULL,        -- store as ISO 'YYYY-MM-DD'
    elevation INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    FOREIGN KEY(address_id) REFERENCES address(id)
);

CREATE TABLE runner (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone_number TEXT NOT NULL,
    age INTEGER NOT NULL,
    gender TEXT CHECK(gender IN ('Male','Female')) NOT NULL,
    address_id INTEGER NOT NULL,
    FOREIGN KEY(address_id) REFERENCES address(id)
);

CREATE TABLE registration (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    runner_id INTEGER NOT NULL,
    race_id INTEGER NOT NULL,
    FOREIGN KEY(runner_id) REFERENCES runner(id),
    FOREIGN KEY(race_id) REFERENCES race(id)
);

CREATE TABLE shoes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    runner_id INTEGER NOT NULL,
    brand TEXT NOT NULL,
    size REAL NOT NULL,
    model TEXT NOT NULL,
    year INTEGER NOT NULL,
    FOREIGN KEY(runner_id) REFERENCES runner(id)
);

CREATE TABLE prize (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER NOT NULL,
    first_place INTEGER NOT NULL,
    second_place INTEGER NOT NULL,
    third_place INTEGER NOT NULL,
    FOREIGN KEY(race_id) REFERENCES race(id)
);

CREATE TABLE results (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER NOT NULL,
    runner_id INTEGER NOT NULL,
    place INTEGER NOT NULL,
    race_time TEXT NOT NULL,   -- store as 'HH:MM:SS'
    FOREIGN KEY(race_id) REFERENCES race(id),
    FOREIGN KEY(runner_id) REFERENCES runner(id)
);