from flask import *
import extensions

url_prefix = extensions.url_prefix_String()
login = Blueprint('login', __name__, template_folder='templates',url_prefix=url_prefix)

@login.route('/login', methods= ["GET","POST"])
def login_route():
	if request.method == "GET":
		return render_template("login.html")

	db = extensions.connect_to_database()
	cur = db.cursor()
	fields = ['username', 'password']
	errList = []
	username = request.form['username'].lower()
	extensions.CheckField(errList,fields, request.form)

	query = "SELECT * FROM User WHERE username = %s"
	cur.execute(query,[request.form['username']])
	result = cur.fetchone()

	password = None

	if result is None:
		errList.append('Username does not exist')
	else:
		password = result['password']
		if not extensions.PasswordCheck(request.form['password'], password):
			errList.append('Password is inocorrect for the specified username')

	if errList == []:
		session['username'] = username
		session['firstname'] = result['firstname']
		session['lastname'] = result['lastname']
		return redirect(url_for('main.main_route'))

	return render_template('login.html', errList=errList)