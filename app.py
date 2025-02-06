from flask import Flask, render_template, request, redirect, url_for
import mysql.connector
import os

app = Flask(__name__)

# MySQL接続設定
db_config = {
    'host': os.getenv('MYSQL_HOST', 'localhost'),
    'user': os.getenv('MYSQL_USER', 'root'),
    'password': os.getenv('MYSQL_PASSWORD', ''),
    'database': os.getenv('MYSQL_DATABASE', 'resident_registry')
}

def get_db_connection():
    return mysql.connector.connect(**db_config)

@app.route('/')
def index():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM residents")
    residents = cursor.fetchall()
    cursor.close()
    conn.close()
    return render_template('index.html', residents=residents)

@app.route('/add', methods=['POST'])
def add_resident():
    name = request.form['name']
    email = request.form['email']
    address = request.form['address']
    
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("INSERT INTO residents (name, email, address) VALUES (%s, %s, %s)", (name, email, address))
    conn.commit()
    cursor.close()
    conn.close()
    
    return redirect(url_for('index'))

@app.route('/delete/<int:id>')
def delete_resident(id):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("DELETE FROM residents WHERE id = %s", (id,))
    conn.commit()
    cursor.close()
    conn.close()
    
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
