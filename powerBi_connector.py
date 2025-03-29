import mysql.connector
import pandas as pd


conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='@#Suraj711495#@', 
    database='POWERBI_assignment3' 
)

if conn.is_connected():
    print("Connected to MySQL successfully!")
else:
    print("Failed to connect.")

query = "SELECT * FROM your_table" 


df = pd.read_sql(query, conn)


conn.close()


print(df)












import mysql.connector

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='@#Suraj711495#@',
    database='POWERBI_assignment3'
)

cursor = conn.cursor()

query = """INSERT INTO user_behavior_dataset 
(user_id, device_model, operating_system, app_usage_time, screen_on_time, battery_drain, num_apps_installed, data_usage, age, gender, user_behavior_class) 
VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"""

data = (3, 'OnePlus 9', 'Android', 100, 3.5, 2800, 45, 450, 28, 'Male', 'Light User')

cursor.execute(query, data)
conn.commit()

print("Data inserted successfully!")

cursor.close()
conn.close()
