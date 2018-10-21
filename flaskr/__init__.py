import json
import os

import numpy as np
from flask import Flask, request

from flaskr import db

from flaskr import googlemap


def create_app(test_config=None):
    # create and configure the app
    app = Flask(__name__, instance_relative_config=True)
    app.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE=os.path.join(app.instance_path, 'flaskr.db'),
    )

    if test_config is None:
        # load the instance config, if it exists, when not testing
        app.config.from_pyfile('config.py', silent=True)
    else:
        # load the test config if passed in
        app.config.from_mapping(test_config)

    # ensure the instance folder exists
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    db.init_app(app)

    @app.route('/hello')
    def hello():
        return 'Hello, World'

    @app.route('/getAll/<dept>', methods=['GET'])
    def getDept(dept):
        conn = db.create_connection(db.DATABASE)
        res = db.select_all_tasks(conn, dept)
        conn.close()
        return json.dumps({'item': res})

    @app.route('/getNearest/userloc=<userloc>&dept=<dept>', methods=['GET'])
    def getNeartest(userloc, dept):
        conn = db.create_connection(db.DATABASE)
        res = db.select_all_tasks(conn, dept)
        conn.close()
        user = googlemap.getGeolocation(userloc)
        alloc = list()
        for t in res:
            alloc.append((googlemap.getGeolocation(t['organization_addr']), res.index(t)))
        closet = list()
        for i in alloc:
            x = user['lat'] - i[0]['lat']
            y = user['lng'] - i[0]['lng']
            distance = np.linalg.norm([x, y], ord=1)
            closet.append((distance, alloc.index(i)))
        closet.sort(key=lambda tup: tup[0])

        final = list()
        for item in closet:
            final.append(res[item[1]])
        final=final[:5]
        return json.dumps({'item': final})

    return app
