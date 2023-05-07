# https://docs.locust.io/en/2.15.1/testing-other-systems.html
# https://docs.locust.io/en/stable/extending-locust.html
# (Obsolete) https://medium.com/analytics-vidhya/create-custom-clients-in-locust-io-to-test-database-performance-fd71235ece6e
# (Obsolete) https://gist.github.com/theholy7/03d0562074a985dd384ecd8e3de29e6a

import time
from locust.user.wait_time import constant
from locust import User, task, events
from sqlalchemy import create_engine, text

def execute_query(conn_string, query):
    print("Connecting to MySQL")
    _conn = create_engine('mysql+pymysql://' + conn_string, connect_args={ 'connect_timeout': 2 }).connect()
    rs = _conn.execute(query)
    print(query)
    _conn.commit()
    _conn.close()
    return rs

class MySqlClient:

    def __init__(self, request_event):
        self._request_event = request_event

    def __getattr__(self, name):
        def wrapper(*args, **kwargs):
            
            request_meta = {
                "url": "",
                "request_type": "mysql",
                "name": name,
                "start_time": time.time(),
                "response_length": 0,
                "response": None,
                "context": {}, 
                "exception": None,
            }
            start_perf_counter = time.perf_counter()
            print(args)
            print(name)
            print("executing")
            try:
                cursor = execute_query(*args, **kwargs)
                request_meta["response"] = len(cursor.fetchall()) if name == "execute_get" else 0
            except Exception as e:
                request_meta["exception"] = e
            print("executed")
            request_meta["response_time"] = (time.perf_counter() - start_perf_counter) * 1000
            self._request_event.fire(**request_meta)  # This is what makes the request actually get logged in Locust
            return request_meta["response"]
        
        return wrapper

print("Parsing locustfile, happens before anything else")


@events.request.add_listener
def my_request_handler(request_type, name, response_time, response_length, response,
                       context, exception, start_time, url, **kwargs):
    if exception:
        print(f"Request to {name} failed with exception {exception}")
    else:
        print(f"Successfully made a request to: {name}")
        print(f"The response was {response}")


class MySqlClientUser(User):

    abstract = True

    def __init__(self, environment):
        super().__init__(environment)
        self.client = MySqlClient(request_event=environment.events.request)
        self.client._locust_environment = self.environment


class MyUser(MySqlClientUser):
    host = '' # username:password@endpoint/database
    wait_time = constant(1) # Wait 1 second

    @task
    def get(self):
        self.conn_string = self.host
        
        self.client.execute_get(self.conn_string, text("show master status;"))

    @task
    def update(self):
        updateSQL= f"""show master status"""
        self.client.execute_update(self.conn_string, text(updateSQL))


    def on_stop(self):
        print("A user was stopped")