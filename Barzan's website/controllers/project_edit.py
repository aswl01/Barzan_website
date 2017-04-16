from flask import *
import extensions
import os
import hashlib

url_prefix = extensions.url_prefix_String()
project_edit = Blueprint('project_edit', __name__, template_folder='templates',url_prefix=url_prefix)

@project_edit.errorhandler(404)
def page_not_found(e):
	return render_template('404.html'), 404

imagePath = os.path.join(os.path.abspath('.'), 'static', 'images')

@project_edit.route('/edit', methods= ['GET', 'POST'])
def project_edit_route():
	db = extensions.connect_to_database()
	cur = db.cursor()
	errList = []
	if 'username' not in session:
		return render_template('error2.html'), 403
	if request.method == 'POST':
		if not check_project_name(cur, request.form['project_name'].replace("'", "\'")):
			errList.append('Project name exists')
		else:
			file = request.files['file']
			if not file:
				query = 'INSERT INTO Projects VALUES(NULL, %s, %s, %s, %s, NULL, %s)'
				cur.execute(query, [request.form['project_name'], request.form['project_subtitle'], request.form['project_contents'], request.form['project_website'], request.form['status']])
				return redirect(url_for('main.main_route'))
			if file and allowed_file(file.filename):
				file_format = os.path.splitext(str(file.filename))[1]
				filename = getHash(file.filename)
				file.save(os.path.join(imagePath, filename + file_format))
				query = 'INSERT INTO Projects VALUES(NULL,%s,%s,%s,%s,%s,%s)'
				cur.execute(query,[request.form['project_name'], request.form['project_subtitle'], request.form['project_contents'], request.form['project_website'], filename + file_format ,request.form['status']])
				return redirect(url_for('main.main_route'))
			else:
				errList.append("Wrong file type! type can only be one of 'jpg', 'gif', 'png', 'bmp'")
	return render_template('project_edit.html', errList = errList)





def check_project_name(cur,project_name):
	query = 'SELECT * FROM Projects WHERE pname = %s'
	cur.execute(query, [project_name])
	result = cur.fetchone()
	return result is None

def allowed_file(filename):
	return '.' in filename and os.path.splitext(str(filename))[1] in ['.jpg', '.gif', '.png', '.bmp']

def getHash(filename):
    m = hashlib.md5(filename)
    return m.hexdigest()