from flask import Flask, render_template
import extensions
import controllers
import config

# Initialize Flask app with the template folder address
app = Flask(__name__, template_folder='templates')

# Register the controllers
app.register_blueprint(controllers.main)
app.register_blueprint(controllers.logout)
app.register_blueprint(controllers.login)
app.register_blueprint(controllers.user)
app.register_blueprint(controllers.project_edit)

app.secret_key = "1234567890"

@app.errorhandler(404)
def page_not_found(e):
	return render_template('error.html'), 404
# Listen on external IPs
# For us, listen to port 3000 so you can just run 'python app.py' to start the server
if __name__ == '__main__':
	# listen on external IPs
	app.run(host=config.env['host'], port=config.env['port'], debug=True)
