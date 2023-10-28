# pip3 install locust
# locust
# http://localhost:8089/


# https://adamtheautomator.com/load-test/
# https://unbiased-coder.com/load-test-api-with-python/#How_To_LoadPerformance_Test_An_API_Using_Python
# https://github.com/locustio/locust/blob/master/examples/test_data_management.py

# Imports classes from Locust
from locust import HttpUser, task 
import random

def read_user_credentials_from_csv():
    return []
user_credentials = read_user_credentials_from_csv()


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

    # https://github.com/locustio/locust/issues/79
    def on_start(self):
        credentials = random.choice(user_credentials)
        self.client.post("/login/", {"username":credentials[0], "password":credentials[1]})
    
    # https://stackoverflow.com/questions/53160515/python-locust-load-testing-how-to-upload-and-submit-xml-file
    @task
    def post_img(self):
        headers = {'content-type': 'application/xml'}
        xml_data = ""
        # with open('request_data.xml', 'r') as xml_fh:
            # xml_data = xml_fh.read()
        self.client.request(
            method='POST',
            url='/upload',
            data=xml_data,
            headers=headers)