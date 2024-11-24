from pyspark.sql import SparkSession
from pyspark.sql.functions import col, to_date

# Configurar la sesión Spark con el conector JDBC
spark = SparkSession.builder \
    .appName("ETL_COVID") \
    .config("spark.jars", "/home/hadoop/mysql-connector-j-9.1.0.jar") \
    .getOrCreate()

# Variables de conexión a MySQL
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

# Leer datos crudos desde S3
spark.conf.set("spark.sql.legacy.timeParserPolicy", "LEGACY")
raw_data = spark.read.csv("s3://p3-tet/raw/", header=True, inferSchema=True)

# Renombrar columnas con espacios y caracteres especiales
raw_data = raw_data \
    .withColumnRenamed("fecha reporte web", "fecha_reporte_web") \
    .withColumnRenamed("ID de caso", "id_caso") \
    .withColumnRenamed("Fecha de notificación", "fecha_notificacion") \
    .withColumnRenamed("Código DIVIPOLA departamento", "codigo_divipola_departamento") \
    .withColumnRenamed("Nombre departamento", "nombre_departamento") \
    .withColumnRenamed("Código DIVIPOLA municipio", "codigo_divipola_municipio") \
    .withColumnRenamed("Nombre municipio", "nombre_municipio") \
    .withColumnRenamed("Unidad de medida de edad", "unidad_medida_edad") \
    .withColumnRenamed("Tipo de contagio", "tipo_contagio") \
    .withColumnRenamed("Ubicación del caso", "ubicacion_caso") \
    .withColumnRenamed("Código ISO del país", "codigo_iso_pais") \
    .withColumnRenamed("Nombre del país", "nombre_pais") \
    .withColumnRenamed("Fecha de inicio de síntomas", "fecha_inicio_sintomas") \
    .withColumnRenamed("Fecha de muerte", "fecha_muerte") \
    .withColumnRenamed("Fecha de diagnóstico", "fecha_diagnostico") \
    .withColumnRenamed("Fecha de recuperación", "fecha_recuperacion") \
    .withColumnRenamed("Tipo de recuperación", "tipo_recuperacion") \
    .withColumnRenamed("Pertenencia étnica", "pertenencia_etnica") \
    .withColumnRenamed("Nombre del grupo étnico", "nombre_grupo_etnico")

# Mostrar esquema de los datos crudos
print("Esquema de los datos crudos:")
raw_data.printSchema()

# Convertir columnas de fecha al formato correcto
date_columns = [
    "fecha_reporte_web", "fecha_notificacion", "fecha_inicio_sintomas", 
    "fecha_muerte", "fecha_diagnostico", "fecha_recuperacion"
]

for col_name in date_columns:
    raw_data = raw_data.withColumn(col_name, to_date(col(col_name), "MM/dd/yyyy"))

# Eliminar registros con valores nulos en columnas clave
clean_data = raw_data.dropna(subset=["id_caso", "nombre_departamento", "nombre_municipio"])

# Guardar los datos procesados en S3 (zona trusted)
clean_data.write.mode("overwrite").parquet("s3://p3-tet/trusted/")

print("Procesamiento completado y datos guardados en la zona trusted.")

# Finalizar la sesión Spark
spark.stop()

