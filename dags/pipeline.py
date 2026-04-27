
import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
import src.amazon_Injestion as amazon_Injestion
from airflow.sdk import DAG
from airflow.sdk import chain
from airflow.providers.standard.operators.bash import BashOperator
from airflow.providers.standard.operators.python import PythonOperator
from datetime import timedelta, datetime

PROJECT_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
DBT_DIR = os.path.join(PROJECT_ROOT, "pipeline_dbt")

with DAG(
    dag_display_name="Custom pipeline",
    dag_id="Custom_pipeline",
    start_date=datetime(2026, 4, 2),
    schedule="@daily",
    default_args={
        "retries": 2,
        'retry_delay': timedelta(minutes=1),
        'owner': 'aaron',
        'email': ['aabrey321@gmail.com'],
        'email_on_failure': True,
        'email_on_retry': False,
        },
):
    chain(
        PythonOperator(python_callable = amazon_Injestion.run_ingestion, task_id="ingestion"),
        BashOperator(bash_command=f"cd {DBT_DIR} && dbt run", task_id="processing"),
    )
