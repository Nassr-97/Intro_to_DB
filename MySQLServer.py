import mysql.connector

try:
    mydb = mysql.connector.connect(
        host = "localhost"
        user = "MyName"
        password = "myPassword"
    )
except mysql.connector.Error:
    print("Error")

myCursor = mydb.cursor()

myCursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

print("Database 'alx_book_store' created successfully!")

myCursor.close()
mydb.close()