# pip install mysql-connector-python

import mysql.connector
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="MySQL123##",
    database="e_shopping"
)
cursor = conn.cursor()
cursor.execute("CREATE TABLE my_fav_p (countires VARCHAR(20))")
sql = "INSERT INTO my_fav_p VALUES ('France')"
cursor.execute(sql)
conn.commit()
cursor.execute("SELECT * FROM my_fav_p")
output = cursor.fetchall()
for i in output:
    print(i)

