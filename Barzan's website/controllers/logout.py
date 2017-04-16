from flask import *
import extensions

url_prefix = extensions.url_prefix_String()
logout = Blueprint('logout', __name__, template_folder='templates', url_prefix=url_prefix)

@logout.route('/logout', methods=["POST"])
def logout_route():
	if 'username' in session:
		session.clear()
	return redirect(url_for('main.main_route'))