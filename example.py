import sqlite3
from flask import Flask, render_template, request, flash

conn = sqlite3.connect('instance/flaskr.sqlite')
print("opened database success")

conn.execute('CREATE TABLE students (name TEXT, addr TEXT, city TEXT, pin TEXT)')
print("Table created successfully")
conn.close()
