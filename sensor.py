import mysql.connector
from mysql.connector import Error

DB_HOST = "localhost"
DB_USER = poncho_admin"
DB_PASSWORD = "J3x!vT7s9QwZ@hF1"
DB_NAME = "sdf_data"

try:
    connection = mysql.connector.connect(
        host=DB_HOST,
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME
    )

    if connection.is_connected():
        cursor = connection.cursor()
        query = "SELECT sensor_id, fecha_hora, temperatura, humedad FROM sensores"
        cursor.execute(query)
        rows = cursor.fetchall()

        print("Datos de sensores:")
        for row in rows:
            sensor_id, fecha_hora, temperatura, humedad = row
            print(f"Sensor {sensor_id}: {fecha_hora} - Temp: {

