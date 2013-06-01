from bottle import route, run, request, put, template, static_file, redirect
import os
import sqlite3

conn = sqlite3.connect("reservations.db")
cursor = conn.cursor()

@route('/')
def main():
	return template("media/welcome.tpl",
		handle="",
		email="",
		handle_error=None,
		email_error=None
	)

@route('/reserve', method="POST")
def reservation_submit():
	tag = request.forms.get('tag')
	handle = request.forms.get('handle')
	email = request.forms.get('email')

	print "[%s] %s - %s" % (tag, handle, email)
	cursor.execute("""
		INSERT INTO reservations (tag, handle, email, timestamp)
		VALUES (?, ?, ?, date('now'))
	""", (tag, handle, email))
	conn.commit()

	return "success"


def get_handle(handle_query):
	print handle_query
	cursor.execute("SELECT tag, handle FROM reservations WHERE handle LIKE ?", (handle_query,))
	result = cursor.fetchone()
	return result

@route('/handles')
def get_handles():
	try:
		tag, handle = get_handle(request.query.handle)
		return handle if handle else ""
	except TypeError, e:
		return ""

@route('/media/:path#.+#')
def server_static(path):
	print os.getcwd()
	return static_file(path, root=os.getcwd()+'/media')

@route('/:handle')
def congratulations(handle):
	result = get_handle(handle)
	if result:
		tag, handle = result
		return template("media/congratulations.tpl", tag=tag, handle=handle)
	else:
		return redirect("/")


print __file__
run(host='localhost', port=9000, reloader=True)

