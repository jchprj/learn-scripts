# Managing configurations for different environments

# From <https://stackoverflow.com/questions/50610832/managing-configurations-for-different-environments> 

class Base():
    DEBUG = False
    TESTING = False
class DevelopmentConfig(Base):
    DEBUG = True
    DEVELOPMENT = True
    DATABASE_URI = "mysql+mysqldb://root:root@localhost/demo"
class ProductionConfig(Base):
    DEBUG = False
    TESTING = False
    DATABASE_URI = "mysql+mysqldb://root:root@prod_host_name/demo_prod"


from flask import Flask
import os

app = Flask(__name__)
env = "conf.DevelopmentConfig" # os.environ['APP_SETTINGS']
app.config.from_object(env)

print(app.config.get("DEBUG"))

print("-----------------")

env = "conf.ProductionConfig" # os.environ['APP_SETTINGS']
app.config.from_object(env)

print(app.config.get("DEBUG"))