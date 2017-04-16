import MySQLdb
import MySQLdb.cursors
import config
import re
import hashlib
import uuid

def connect_to_database():
	options = {
	  'host': config.env['host'],
	  'user': config.env['user'],
	  'passwd': config.env['password'],
	  'db': config.env['db'],
	  'cursorclass' : MySQLdb.cursors.DictCursor
	}
	db = MySQLdb.connect(**options)
	db.autocommit(True)
	return db

def url_prefix_String():
	return '/project'

def lastname_valid(errList,lastname):
	if (len(lastname) > 20):
		errList.append('Lastname must be no longer than 20 characters')

def firstname_valid(errList,firstname):
	if (len(firstname) > 20):
		errList.append('Firstname must be no longer than 20 characters')

def username_valid(errList,username):
	if (len(username) > 20):
		errList.append('Username must be no longer than 20 characters')
	if (len(username) < 3):
		errList.append('Usernames must be at least 3 characters long')
	if not re.match("^\w*$",username):
		errList.append("Usernames may only contain letters, digits, and underscores")

def CheckField(errList,fields, request_form):
	for field in fields:
		if request_form[field] == "":
			errList.append(field + " may not be left blank")

def password_valid(errList,password):
	if (len(password) < 8):
		errList.append("Passwords must be at least 8 characters long")
	if not re.match("^\w*$", password):
		errList.append("Passwords may only contain letters, digits, and underscores")
	if (not re.match(".*[0-9].*", password)) or (not re.match(".*[a-zA-Z].*", password)):
		errList.append("Passwords must contain at least one letter and one number")

def email_valid(errList,email):
    if (not (re.match(r"[^@]+@[^@]+\.[^@]+", email))):
        errList.append("Email address must be valid")
    if (len(email) > 40):
    	errList.append("Email must be no longer than 40 characters")

def encrypt(password):
	algorithm = "sha512"
	salt = uuid.uuid4().hex
	m = hashlib.new(algorithm)
	m.update(salt + password)
	password_hash = m.hexdigest()
	return "$".join([algorithm, salt, password_hash])

def PasswordCheck(password, raw):
	algorithm,salt,hashed = raw.split('$')
	m = hashlib.new(algorithm)
	m.update(salt + password)
	password_hash = m.hexdigest()
	return password_hash == hashed