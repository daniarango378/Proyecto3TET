from pyspark.sql import SparkSession

# Crear una sesión Spark
spark = SparkSession.builder \
    .appName("ReadCovidData") \
    .config("spark.jars", "/home/hadoop/mysql-connector-j-9.1.0.jar") \
    .getOrCreate()

# Configuración de conexión JDBC
jdbc_url = "jdbc:mysql://3.95.168.6:3306/covid_data"
jdbc_properties = {
    "user": "root",  # Cambia 'root' por tu usuario si es diferente
    "password": "CmMpD1305?NIC!",
    "driver": "com.mysql.cj.jdbc.Driver"
}

# Leer datos desde la tabla
df = spark.read.jdbc(url=jdbc_url, table="casos_covid", properties=jdbc_properties)

# Mostrar los datos
df.show()

# Guardar los datos en un archivo CSV en S3
df.write.mode("overwrite").csv("s3://p3-tet/trusted", header=True)

# Detener SparkSession
spark.stop()

