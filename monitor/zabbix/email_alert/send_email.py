#!/usr/bin/python2.7
import smtplib
server = smtplib.SMTP('smtp.gmail.com',587)
server.starttls()
user_address="xxxxxxxxxx@gmail.com"
password="XXXXXXXX"
try:
    server.login(user_address,password) #log in gmail server
except Exception as e:
    print(e)
msg="kuai dian fa song baojing"
direction="XXXXXXX@163.com"
server.sendmail(user_address,direction,msg)
server.quit()        
