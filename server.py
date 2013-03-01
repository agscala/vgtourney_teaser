from bottle import route, run, request, put, template, static_file, redirect
import os
import sqlite3

conn = sqlite3.connect("portal.db")
cursor = conn.cursor()

def site_exists(url):
	return True

@route('/')
def main():
	cursor.execute("SELECT id, name, url from links")
	links = list(cursor)
	return template("media/index.tpl", links=links)

@route('/link', method="POST")
def link_submit():
	url = request.forms.get('url')
	name = request.forms.get('name')

	if site_exists(url):
		cursor.execute("INSERT INTO links(name, url) VALUES (?, ?)", (name, url))
		conn.commit()

	redirect("/")

@route('/link/:id/delete')
def link_delete(id):
	cursor.execute("DELETE FROM links WHERE id = ?", (id, ))
	redirect("/")

@route('/media/:path#.+#')
def server_static(path):
	return static_file(path, root='/home/agscala/workspace/portal/media/')

run(host='localhost', port=8080)

