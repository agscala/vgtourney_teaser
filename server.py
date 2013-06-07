from bottle import route, run, request, put, template, static_file, redirect

import os
import sqlite3
import sys

import smtplib
from email.mime.text import MIMEText as text

conn = sqlite3.connect("reservations.db", check_same_thread=False)
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
		VALUES (?, ?, ?, datetime('now'))
	""", (tag, handle, email))
	conn.commit()

	return "success"


def get_handle(handle_query):
	print handle_query
	cursor.execute("SELECT tag, handle FROM reservations WHERE handle = ? COLLATE NOCASE", (handle_query,))
	result = cursor.fetchone()
	return result

def get_email(email_query):
	cursor.execute("SELECT email FROM reservations WHERE email = ? COLLATE NOCASE", (email_query,))
	result = cursor.fetchone()
	return result

@route('/handles')
def get_handles():
	try:
		tag, handle = get_handle(request.query.handle)
		return handle if handle else ""
	except TypeError, e:
		return ""

@route('/emails')
def get_emails():
	try:
		email = get_email(request.query.email)
		return email if email else ""
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

@route('/feedback', method="POST")
def send_feedback():
	user = "noreply@vgtourney.com"
	password = "VGTourney2000"

	receivers = ['justen@vgtourney.com', 'andrew@vgtourney.com']
	topic = 'Feedback - ' + request.forms.get('topic')
	email = request.forms.get('email') or "Anonymous"
	message = request.forms.get('message') + "\n\nSent by " + email

	content = text(message)
	content['Subject'] = topic

	smtpObj = smtplib.SMTP('smtp.gmail.com', 587)
	smtpObj.starttls()
	smtpObj.login(user, password)

	smtpObj.sendmail(user, receivers, content.as_string())
	smtpObj.quit()
	return "success"


print __file__
try:
	mode = sys.argv[1]
except IndexError:
	mode = "production"

if mode == "dev":
	run(host='0.0.0.0', port=9000, reloader=True)
else:
	run(host='0.0.0.0', port=80, server="paste")

