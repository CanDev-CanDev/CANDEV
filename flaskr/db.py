import sqlite3

import click
from flask import current_app, g
from flask.cli import with_appcontext

DATABASE = "/Users/yanzhang/Desktop/candev/instance/flaskr.sqlite"


def create_connection(db_file):
    """ create a database connection to the SQLite database
        specified by the db_file
    :param db_file: database file
    :return: Connection object or None
    """
    try:
        conn = sqlite3.connect(db_file)
        return conn
    except sqlite3.Error as e:
        print(e)

    return None


def select_all_tasks(conn, dept):
    """
    Query all rows in the tasks table
    :param dept: department
    :param conn: the Connection object
    :return:
    """
    cur = conn.cursor()
    cur.execute('SELECT * FROM ' + dept)
    rows = cur.fetchall()
    # column = cur.description
    item = []

    for row in rows:
        # item.append({column[0][0]: row[0], column[1][0]: row[1], column[2][0]: row[2], column[3][0]: row[3], column[4][0]: row[4],
        #          'web_links': row[5], 'lable': row[6]})
        item.append(dict_factory(cur,row))

    return item

def dict_factory(cursor, row):
    d = {}
    for idx,col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect(DATABASE)
    return db


def close_db(e=None):
    db = g.pop('db', None)

    if db is not None:
        db.close()


def init_db():
    db = create_connection(DATABASE)
    with current_app.open_resource('schema.sql') as f:
        db.executescript(f.read().decode())


@click.command('init-db')
@with_appcontext
def init_db_command():
    """Clear the existing data and create new tables."""
    init_db()
    click.echo('Initialized the database.')


def init_app(app):
    app.teardown_appcontext(close_db)
    app.cli.add_command(init_db_command)


def query_db(query, args=(), one=False):
    cur = get_db().execute(query, args)
    rv = cur.fetchall()
    cur.close()
    return (rv[0] if rv else None) if one else rv
