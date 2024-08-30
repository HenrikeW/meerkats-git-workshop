CREATE TABLE IF NOT EXISTS migration (
	id	INTEGER PRIMARY KEY AUTOINCREMENT,
	ts	TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	hash	TEXT NOT NULL,
	name	TEXT NOT NULL,

	UNIQUE(name)
);