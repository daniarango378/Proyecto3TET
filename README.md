# Proyecto 3: Automatización del Proceso de Captura, Ingesta, Procesamiento y Salida de Datos para la Gestión de Datos de COVID en Colombia  
**Arquitectura Batch para Big Data**  

**Curso:** ST0263: Tópicos Especiales en Telemática, 2024-2  
**Estudiante:** Daniela Arango Gutierrez - darangog2@eafit.edu.co  
**Profesor:** Alvaro Enrique Ospina San Juan - aesospinas@eafit.edu.co  

---

## 1. Descripción del Proyecto  
Este proyecto se desarrolló como parte del curso ST0263: Tópicos Especiales en Telemática y tiene como propósito construir un sistema integral para gestionar datos de COVID-19 en Colombia utilizando una arquitectura Batch para Big Data. Durante el curso, aprendimos acerca de los retos inherentes al manejo de grandes volúmenes de datos, desde su captura hasta su procesamiento y análisis. Este proyecto busca aplicar esos conceptos en un caso práctico.

La actividad consiste en diseñar y automatizar un sistema que integre los datos del Ministerio de Salud y de una base de datos relacional en MySQL. Se requería implementar procesos automáticos para la ingesta, almacenamiento, procesamiento y consulta de datos, utilizando servicios de AWS como S3, EMR, Athena y SageMaker. Además, se planteó el reto opcional de aplicar técnicas de análisis avanzado y aprendizaje de máquina para obtener insights accionables a partir de los datos procesados.

### 1.1 Aspectos Cumplidos  
Durante el desarrollo del proyecto, se logró implementar una serie de procesos que cumplen con los objetivos planteados inicialmente:  

- **Captura de datos desde múltiples fuentes:**  
  - Los datos de COVID-19, en formato CSV, fueron descargados y almacenados en un bucket S3 en la zona raw.  
  - Se configuró una base de datos MySQL en una instancia EC2 para simular datos complementarios como información de población y características sociodemográficas.  

- **Ingesta automática:**  
  - Transferencia automatizada de archivos CSV a S3 utilizando scripts en Python y AWS CLI.  
  - Extracción de datos desde MySQL hacia S3 utilizando PyMySQL y tareas programadas con `cron`.  

- **Procesamiento ETL en Amazon EMR con Spark:**  
  - Limpieza y transformación de datos con PySpark (eliminación de inconsistencias, normalización y unión de fuentes).  
  - Almacenamiento de resultados en la zona trusted de S3 en formato CSV.  

- **Análisis de datos con Amazon SageMaker:**  
  - Análisis exploratorio y visualizaciones de datos procesados.  
  - Modelo de clasificación con Random Forest para predecir el estado de recuperación de casos de COVID-19 (opcional).  

- **Consulta de resultados con Amazon Athena:**  
  - Configuración de Amazon Athena para consultas SQL, incluyendo análisis de casos por departamento y estadísticas del impacto del virus.  

### 1.2 Aspectos NO Cumplidos  
- **Captura de datos desde una API del Ministerio de Salud:**  
  - No se implementó debido a la falta de acceso o documentación de las APIs.  

- **Automatización completa del clúster EMR:**  
  - La creación del clúster no fue completamente automatizada.  

- **Exposición de resultados mediante API Gateway:**  
  - No se implementó una API REST, dejando como único método de consulta el uso de Amazon Athena.  

---

## 2. Diseño del Sistema y Arquitectura  
El sistema diseñado sigue una arquitectura Batch que divide las etapas del flujo de datos en las siguientes zonas:  

- **Zona raw:**  
  - Almacena datos capturados directamente de las fuentes (archivos CSV y datos extraídos de MySQL).  

- **Zona trusted:**  
  - Contiene datos procesados y transformados mediante PySpark en EMR (limpios y normalizados).  

- **Zona refined:**  
  - Almacena resultados del análisis y modelos entrenados para consumo por Athena o servicios externos.  

- **Consulta y análisis:**  
  - Los datos procesados pueden ser consultados con Amazon Athena o utilizados en análisis avanzados con SageMaker.  

### Patrón Utilizado  
El proyecto sigue el patrón ETL (Extract-Transform-Load), separando claramente las etapas de captura, procesamiento y consulta de datos.  

---

## 3. Ambiente de Desarrollo  
- **Lenguaje de programación:** Python 3.7+.  
- **Herramientas y servicios AWS:**  
  - Amazon S3 para almacenamiento.  
  - Amazon EMR para procesamiento ETL.  
  - Amazon SageMaker para análisis y modelado.  
  - Amazon Athena para consultas SQL.  
- **Librerías:**  
  - `pandas`, `numpy`, `matplotlib`, `seaborn` para análisis y visualización.  
  - `boto3` y `s3fs` para interacción con AWS.  
  - `scikit-learn` para machine learning.  

---

## 4. Ambiente de Ejecución  
- **Bucket S3:**  
  - Carpetas configuradas para zonas raw, trusted y refined.  
- **Clúster EMR:**  
  - Nodo maestro y dos nodos core para ejecutar los scripts ETL.  
- **Instancia EC2 para MySQL:**  
  - Base de datos con información simulada, accesible desde el clúster EMR.  
- **Amazon SageMaker:**  
  - Instancia de notebook para análisis y entrenamiento del modelo.  

---

## 5. Ejecución y Uso  

- **Preparación de los Datos:**  
  - Ejecutar el script de ingestión para cargar datos a S3.  
  - Configurar `configs/config.json` con rutas y credenciales.  

- **Procesamiento ETL:**  
  - Subir los scripts ETL al clúster EMR.  
  - Ejecutar `spark-submit --jars /home/hadoop/mysql-connector-java-8.0.xx.jar etl_covid.py` para procesamiento.  

- **Consulta de Resultados:**  
  - Acceder a Amazon Athena y realizar consultas sobre la base `covid_project_db`.  

- **Análisis Avanzado:**  
  - Abrir el notebook en SageMaker y ejecutar el análisis.  

---

## 6. Referencias  

- [Video tutorial sobre Spark en EMR](https://youtu.be/ZFns7fvBCH4)  
- [Repositorio de ejemplo](https://github.com/airscholar/EMR-for-data-engineers)  
- [Documentación oficial de AWS para EMR y Athena](https://docs.aws.amazon.com/)  
