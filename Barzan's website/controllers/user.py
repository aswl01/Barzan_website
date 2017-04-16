from flask import *
import extensions

url_prefix = extensions.url_prefix_String()
user = Blueprint('user', __name__, template_folder='templates',url_prefix=url_prefix)

@user.route('/user/edit', methods= ["GET","POST"])
def user_edit_route():
	if request.method == "GET" and not "username" in session:
		return redirect(url_for('login.login_route'))

	if request.method == "GET":
		return render_template('user_edit.html')

	db = extensions.connect_to_database()
	cur = db.cursor()
	errList = []
	fields = ['firstname', 'lastname', 'password1']
	username = escape(session['username'])

	if 'lastname' in request.form:
		if len(request.form['lastname']) > 20:
			errList.append("Lastname must be no longer than 20 characters")
			return render_template("user_edit.html", errList = errList)
		else:
			query = "UPDATE User SET lastname = %s WHERE username = %s"
			cur.execute(query, [request.form['lastname'], username])
			session['lastname'] = request.form['lastname']

	if 'firstname' in request.form:
		if len(request.form['firstname']) > 20:
			errList.append("Firstname must be no longer than 20 characters")
			return render_template("user_edit.html", errList = errList)
		else:
			query = "UPDATE User SET firstname = %s WHERE username = %s"
			cur.execute(query, [request.form['firstname'], username])
			session['firstname'] = request.form['firstname']

	if 'password1' in request.form:
		if (request.form['password1']) != (request.form['password2']):
			errList.append("Passwords do not match")
		extensions.password_valid(errList,request.form['password1'])
		if errList != []:
			return render_template("user_edit.html", errList = errList)
		else:
			query = "UPDATE User SET password = %s WHERE username = %s"
			cur.execute(query, [extensions.encrypt(request.form["password1"]), username])

	return render_template("user_edit.html", errList = errList)




		