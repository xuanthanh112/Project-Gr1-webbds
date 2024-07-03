import smtplib
email='xuanha22222005@gmail.com'
password='itns bgmq uyux anog'
email_sent='xuanthanh261203@gmail.com'
session= smtplib.SMTP('smtp.gmail.com',587)
session.starttls()
session.login(email,password)
#noi dung 
mail_content='''Subject:hello
hi ban 
'''
session.sendmail(email,email_sent,mail_content)
print('mail sent')
