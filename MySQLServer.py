import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost"
    user = "MyName"
    password = "myPassword"
)

myCursor = mydb.cursor()

myCursor.execute("Create DATABASE IF NOT EXIST alx_book_store")

print("Database 'alx_book_store' created successfully!")

myCursor.close()
mydb.close()