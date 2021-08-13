# https://chromedriver.chromium.org/getting-started
import time

from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException

# driver = webdriver.Chrome('/path/to/chromedriver')  # Optional argument, if not specified will search path.
driver = webdriver.Chrome()

driver.get('http://www.google.com/');

time.sleep(5) # Let the user actually see something!

# https://stackoverflow.com/questions/29383565/selenium-with-python-wait-indefinitely-until-an-input-box-is-present
while(True):    # Explictly wait for element
    try:
        search_box = driver.find_element_by_name('q')
        break
    except NoSuchElementException:
        continue

search_box.send_keys('ChromeDriver')

search_box.submit()

time.sleep(5) # Let the user actually see something!

driver.quit()