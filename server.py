from bottle import route, run, request, put, template, static_file, redirect
import os
import sqlite3

conn = sqlite3.connect("reservations.db")
cursor = conn.cursor()

@route('/')
def main():
	return template("media/welcome.tpl")

@route('/reserve', method="POST")
def reservation_submit():
	tag = request.forms.get('tag')
	handle = request.forms.get('handle')
	email = request.forms.get('email')

	cursor.execute("""
		INSERT INTO reservations (tag, handle, email, timestamp)
		VALUES (?, ?, ?, date('now'))
	""", (tag, handle, email))

	conn.commit()

	return redirect("/" + handle)

@route('/handles')
def get_handles():
	handle_query = request.query.handle
	cursor.execute("SELECT handle FROM reservations WHERE handle = ?", (handle_query,))
	handle = cursor.fetchone()
	return handle if handle else "nope"

@route('/media/:path#.+#')
def server_static(path):
	return static_file(path, root=os.path.realpath(__file__)+'media/')

@route('/:handle')
def congratulations(handle):
	return template("media/congratulations.tpl", handle=handle, tag="AGE")


print __file__
run(host='localhost', port=8080, reloader=True)

