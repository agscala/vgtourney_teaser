import sqlite3

def create_tables():
	conn = sqlite3.connect("portal.db")
	cursor = conn.cursor()
	cursor.execute("CREATE TABLE links(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, url TEXT)");
	conn.commit()
	cursor.close()


if __name__ == "__main__":
	create_tables()
