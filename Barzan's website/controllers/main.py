from flask import *
import extensions

url_prefix = extensions.url_prefix_String()
main = Blueprint('main', __name__, template_folder='templates',url_prefix=url_prefix)

@main.errorhandler(404)
def page_not_found(e):
	return render_template('404.html'), 404

@main.route('/', methods= ['GET', 'POST'])
def main_route():
	if 'username' in session:
		username = session['username']
	db = extensions.connect_to_database()
	if request.method == 'POST' and username is not None:
		if 'op_project' in request.form:
			edit_cur = db.cursor()
			query = 'DELETE FROM Projects WHERE pid = %s'
			edit_cur.execute(query, [request.form['pid']])
		if 'title' in request.form:
			edit_cur = db.cursor()
			query = 'UPDATE Projects SET pname = %s WHERE pid = %s'
			edit_cur.execute(query, [request.form['title'].replace("'", "\'"), request.form['pid']])
		if 'subtitle' in request.form:
			edit_cur = db.cursor()
			query = 'UPDATE Projects SET subtitle = %s WHERE pid = %s'
			edit_cur.execute(query, [request.form['subtitle'].replace("'", "\'"), request.form['pid']])
		if 'pjcontent' in request.form:
			edit_cur = db.cursor()
			query = 'UPDATE Projects SET contents = %s WHERE pid = %s'
			edit_cur.execute(query, [str(request.form['pjcontent'].replace("'", "\'")), request.form['pid']])
		if 'op_news' in request.form:
			if request.form['op_news'] == 'delete':
				edit_cur = db.cursor()
				query = 'DELETE FROM News WHERE newid = %s'
				edit_cur.execute(query, [request.form['new_id']])
			elif request.form['op_news'] == 'add':
				edit_cur = db.cursor()
				query = 'INSERT INTO News VALUES(NULL, %s, %s)'
				edit_cur.execute(query, ["News: " + request.form['news_title'].replace("'", "\'"), request.form['newscontent'].replace("'", "\'")])
				edit_cur = db.cursor()
				query = 'SELECT MAX(newid) FROM News'
				edit_cur.execute(query)
				newid = edit_cur.fetchone()
				print newid['MAX(newid)']
				query = 'INSERT INTO NewsinP VALUES(%s, %s)'
				edit_cur.execute(query, [newid['MAX(newid)'], request.form['pid']])
		if 'op_public' in request.form:
			if request.form['op_public'] == 'delete':
				edit_cur = db.cursor()
				query = 'DELETE FROM Publications WHERE publicid = %s'
				edit_cur.execute(query, [request.form['public_id']])
			elif request.form['op_public'] == 'add':
				edit_cur = db.cursor()
				query = 'INSERT INTO Publications VALUES(NULL, %s, %s, %s, %s, %s)'
				edit_cur.execute(query, [request.form['public_title'].replace("'", "\'"), request.form['link'].replace("'", "\'"), request.form['pid'], request.form['background'].replace("'", "\'"), request.form['artist'].replace("'", "\'")])
		if 'op_people' in request.form:
			if request.form['op_people'] == 'delete':
				edit_cur = db.cursor()
				query = 'DELETE FROM Author WHERE name = %s AND pid = %s'
				edit_cur.execute(query,[request.form['people_name'], request.form['pid']])
				edit_cur = db.cursor()
				query = "SELECT * FROM Author WHERE name = %s"
				edit_cur.execute(query, [request.form['people_name']])
				result = edit_cur.fetchone()
				if not result:
					edit_cur = db.cursor()
					query = 'DELETE FROM People WHERE name = %s'
					edit_cur.execute(query,[request.form['people_name']])
			elif request.form['op_people'] == 'add':
				edit_cur = db.cursor()
				query = "SELECT name FROM People WHERE name = %s"
				edit_cur.execute(query, [request.form['people_name']])
				result = edit_cur.fetchone()
				if not result:
					edit_cur = db.cursor()
					query = 'INSERT INTO People VALUES(%s,%s)'
					edit_cur.execute(query,[request.form['people_name'],request.form['people_website']])
				edit_cur = db.cursor()
				query = 'INSERT INTO Author VALUES(%s,%s)'
				edit_cur.execute(query,[request.form['people_name'],request.form['pid']])

		return redirect(url_for('main.main_route'))

	cur = db.cursor()
	query = "SELECT pname, subtitle FROM Projects WHERE status = 'current'"
	cur.execute(query)
	results = cur.fetchall()
	cur_pj = []
	for result in results:
		cur_pj.append(result)

	cur = db.cursor()
	query = "SELECT pname, subtitle FROM Projects WHERE status = 'past'"
	cur.execute(query)
	results = cur.fetchall()
	past_pj = []
	for result in results:
		past_pj.append(result)
	
	cur = db.cursor()
	query = "SELECT * FROM Projects"
	cur.execute(query)
	results = cur.fetchall()
	P = {}
	for result in results:
		pid = result['pid']
		cur2 = db.cursor()
		query = "SELECT P.name, P.pwebsite FROM People P, Author A WHERE A.pid = %s and P.name = A.name"
		cur2.execute(query, [pid])
		peoples = cur2.fetchall()
		P[pid] = {}
		P[pid]['project'] = result
		P[pid]['peoples'] = peoples
		cur3 = db.cursor()
		query = "SELECT * FROM News N, NewsinP NP WHERE NP.newid = N.newid and NP.pid = %s"
		cur3.execute(query, [pid])
		news = cur3.fetchall()
		P[pid]['news'] = news
		cur4 = db.cursor()
		query = "SELECT * FROM Publications WHERE pid = %s"
		cur4.execute(query, [pid])
		publications = cur4.fetchall()
		for public in publications:
			cur5 = db.cursor()
			query = "SELECT * FROM Public_content WHERE publicid = %s"
			cur5.execute(query, [public['publicid']])
			public['public_content'] = cur5.fetchall()
		P[pid]['publications'] = publications
	return render_template("index.html", curr = cur_pj, past = past_pj, res = P)