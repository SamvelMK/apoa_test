from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

db = SQLAlchemy()

def create_app():
    app = Flask(__name__)

    app.config.from_pyfile('settings.py') # set the configurations from settings.py file

    db.init_app(app) # initialize the db
    migrate = Migrate(app, db) # migrate the changes to the db

    from user.views import user_app
    
    app.register_blueprint(user_app)


    return app