from pyspark.sql import SparkSession

# Crear la sesión Spark
spark = SparkSession.builder \
    .appName("Extract_DB_to_S3") \
    .config("spark.jars", "/home/hadoop/mysql-connector-j-9.1.0.jar") \
    .getOrCreate()

# Configuración de conexión a MySQL
jdbc_hostname = "3.95.168.6"
jdbc_port = 3306
jdbc_database = "covid_data"
jdbc_username = "root"
jdbc_password = "CmMpD1305?NIC!"

jdbc_url = f"jdbc:mysql://{jdbc_hostname}:{jdbc_port}/{jdbc_database}?useSSL=false"

connection_properties = {
    "user": jdbc_username,
    "password": jdbc_password,
    "driver": "com.mysql.cj.jdbc.Driver"
}

# Leer datos desde MySQL
table_name = "casos_covid"
db_data = spark.read.jdbc(url=jdbc_url, table=table_name, properties=connection_properties)

# Mostrar una muestra de los datos
print("Datos extraídos de la base de datos:")
db_data.show()

# Guardar los datos en la zona raw de S3
db_data.write.mode("overwrite").parquet("s3://p3-tet/raw")

print("Datos extraídos y guardados en S3 en la zona raw.")

# Finalizar la sesión Spark
spark.stop()

