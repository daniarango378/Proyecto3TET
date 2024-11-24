import boto3

def lambda_handler(event, context):
    athena_client = boto3.client('athena')
    query = "SELECT * FROM covid_analysis LIMIT 10;"
    database = "covid_project_db"
    output_bucket = "p3-tet/refined/athena_resullts"

    response = athena_client.start_query_execution(
        QueryString=query,
        QueryExecutionContext={'Database': database},
        ResultConfiguration={'OutputLocation': f's3://{output_bucket}/'}
    )

    return {"QueryExecutionId": response['QueryExecutionId']}