import src.Injestion as Injestion
import src.Processing as Processing
from airflow.sdk import DAG
from airflow.providers.standard.operators.empty import EmptyOperator
from airflow.providers.standard.operators.bash import BashOperator
from airflow.providers.standard.operators.python import PythonOperator
import datetime

with DAG(
    dag_display_name="Custom pipeline",
    dag_id="Custom_pipeline",
    start_date=datetime.datetime(2026, 4, 2),
    schedule="@daily",
):
    PythonOperator(python_callable = Injestion.run_injestion, task_id="ingestion")
    BashOperator(bash_command="dbt run", task_id="processing")
    #PythonOperator(python_callable = Processing.run_processing, task_id="processing") # here if i wanna use the python verson instead of the bash version for whatever reason

