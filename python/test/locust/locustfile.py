# pip3 install locust
# locust
# http://localhost:8089/


# https://adamtheautomator.com/load-test/
# https://unbiased-coder.com/load-test-api-with-python/#How_To_LoadPerformance_Test_An_API_Using_Python
# https://github.com/locustio/locust/blob/master/examples/test_data_management.py

# Imports classes from Locust
from locust import HttpUser, task 

# Instantiate a new virtual user
class HelloWorldUser(HttpUser): 
    # This tells locust to treat the method below 
    # as something the virtual user would do
    @task 
    # Define a new method
    def hello_world(self): 
        # This method will run an HTTP GET request on the path `/` 
        # of the site you are testing
        self.client.get("/") 
    @task
    def about(self):
        self.client.get("/about/")