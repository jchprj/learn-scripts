#!/usr/bin/python
# https://www.courier.com/error-solutions/pip-install-smtplib-not-working/
# pip3 install secure-smtplib

import smtplib

sender = 'from@fromdomain.com'
receivers = ['to@todomain.com']

message = """From: From Person <from@fromdomain.com>
To: To Person <to@todomain.com>
Subject: SMTP e-mail test

This is a test e-mail message.
"""

smtpObj = smtplib.SMTP('localhost')
smtpObj.sendmail(sender, receivers, message)         
print("Successfully sent email")


# https://stackoverflow.com/questions/8856117/how-to-send-email-to-multiple-recipients-using-python-smtplib
receivers = ['to@todomain.com', 'to@todomain.com']
from email.mime.text import MIMEText
msg = MIMEText("""body""")
msg['Subject'] = "subject line"
msg['From'] = sender
msg['To'] = ", ".join(receivers)
smtpObj.sendmail(sender, receivers, msg.as_string())   


# https://stackoverflow.com/questions/54976051/how-to-accept-self-signed-certificate-from-e-mail-server-via-smtplib-tsl
import smtplib, ssl
context = ssl._create_unverified_context()
with smtplib.SMTP_SSL("domain.tld", 465, context=context) as server:
    server.login("user", "password")
    server.sendmail(sender, receivers, message.as_string())