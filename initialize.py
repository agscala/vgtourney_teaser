import sqlite3

def create_tables():
	conn = sqlite3.connect("reservations.db")
	cursor = conn.cursor()

	cursor.execute("""
		CREATE TABLE reservations (
			id INTEGER PRIMARY KEY AUTOINCREMENT,
			tag TEXT DEFAULT "",
			handle TEXT,
			email TEXT,
			timestamp TEXT
		) """)

	conn.commit()
	cursor.close()


if __name__ == "__main__":
	create_tables()

