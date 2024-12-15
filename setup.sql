CREATE TABLE IF NOT EXISTS users (
 id INTEGER PRIMARY KEY AUTOINCREMENT, 
 username TEXT UNIQUE NOT NULL,         -- the username is unique
 password TEXT NOT NULL                 -- password cant be null.
);

CREATE TABLE IF NOT EXISTS entries (
 id INTEGER PRIMARY KEY AUTOINCREMENT, 
 user_id INTEGER NOT NULL,              
 title TEXT NOT NULL,                   -- the title of the movie
 description TEXT,                      -- a description of the movie.
 image_path TEXT NOT NULL,              -- image path cant be null
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  
 FOREIGN KEY (user_id) REFERENCES users (id) 
);