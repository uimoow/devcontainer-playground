from flask import Flask
from flask_mysqldb import MySQL
import os
from dotenv import load_dotenv

load_dotenv()
app = Flask(__name__)

# MySQL configurations
app.config['MYSQL_HOST'] = os.getenv('DB_HOST')
app.config['MYSQL_USER'] = os.getenv('DB_USER')
app.config['MYSQL_PASSWORD'] = os.getenv('DB_PASSWORD')
app.config['MYSQL_DB'] = os.getenv('DB_NAME')
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

mysql = MySQL(app)

@app.route('/')
def index():
    return 'Hello, World with flask + MySQL.'

@app.route('/getUsers', methods=['GET'])
def get_users():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM users")
    users = cur.fetchall()
    cur.close()
    return {'users': users}

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')
