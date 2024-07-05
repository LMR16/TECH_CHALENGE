from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime


default_args = {

    'owner': 'airflow',

    'depends_on_past': False,

    'start_date': datetime(2024, 7, 5),

    'retries': 0,

}

test_dag = DAG(

    'bashscript',

    default_args=default_args,

    schedule_interval="@daily"

)

# Define the BashOperator task

bash_task = BashOperator(

    task_id='bash_task_execute_script',

    bash_command='config.sh',

    dag=test_dag

)



# Set task dependencies

bash_task