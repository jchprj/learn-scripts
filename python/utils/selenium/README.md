
# Download corresponding version with Chrome: 

https://chromedriver.chromium.org/downloads


# find_element


## By ID or name
```
driver.find_element_by_id
driver.find_element_by_name
```

## By CSS selector
```
driver.find_element_by_css_selector("input[type='submit']").click()
driver.find_element_by_css_selector("input[type='submit'][value='abc']").click()
driver.find_element_by_css_selector("a[id='abc']").click()
```

## By CSS selector advanced
* (^) Halt character – use this to match a string using a prefix
* ($) Dollar character- use this to match a string using a suffix
* (*) Asterisk character – use this to match a string using a sub-string
* (:) Colon  character – use this to match a string using contains method.

```
driver.find_element_by_css_selector("div[id^='123']")
driver.find_element_by_css_selector("div[id$='456']")
driver.find_element_by_css_selector("div[id*='_pattern_']")
driver.find_element_by_css_selector("div:contains('_pattern_')")
```

## By xpath

```
driver.find_element_by_xpath('//button[normalize-space()="Click"]')
```

## By class
```
driver.find_elements_by_class_name("content")
```


## Multiple elements

```
driver.find_elements_by_css_selector('input[name*="abc"]')
```

# References

- [Debunking CSS Selectors – All Things Selenium and QA](https://seleniumwithjavapython.wordpress.com/selenium-with-python/web-elements-locating-mechanisms/locating-webelements-on-a-webpage/debunking-css-selectors/)
- [python - How to find multiple elements in a page without having the content reread every time? - Stack Overflow](https://stackoverflow.com/questions/48048109/how-to-find-multiple-elements-in-a-page-without-having-the-content-reread-every)
- [How to Select CheckBox and Radio Button in Selenium WebDriver](https://www.guru99.com/checkbox-and-radio-button-webdriver.html)
- [Python Selenium - Find Button by text - GeeksforGeeks](https://www.geeksforgeeks.org/python-selenium-find-button-by-text/)
- [How to find element using type in Selenium and Python - Stack Overflow](https://stackoverflow.com/questions/48365252/how-to-find-element-using-type-in-selenium-and-python)
- [Selenium Finding elements by class name in python - Stack Overflow](https://stackoverflow.com/questions/30002313/selenium-finding-elements-by-class-name-in-python)
- [Selenium with Python - Wait indefinitely until an input box is present - Stack Overflow](https://stackoverflow.com/questions/29383565/selenium-with-python-wait-indefinitely-until-an-input-box-is-present)
- [Fill username and password using selenium in python - Stack Overflow](https://stackoverflow.com/questions/21186327/fill-username-and-password-using-selenium-in-python)
- [python selenium click on button - Stack Overflow](https://stackoverflow.com/questions/21350605/python-selenium-click-on-button)
- [Selenium Wait Commands : Implicit, Explicit & Fluent Wait | BrowserStack](https://www.browserstack.com/guide/wait-commands-in-selenium-webdriver)