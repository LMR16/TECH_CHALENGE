## INDICIUM LIGHTHOUSE TECH CHALENGE

# Tech Challenge: Data Extraction and Loading with Docker, Airflow, and Meltano

## Overview

This project demonstrates a data pipeline using Docker, Airflow, and Meltano to extract data from both CSV and PostgreSQL sources and load the data into local files stored in the `/data/csv` and `/data/postgres` directory. The pipeline is designed to run on a schedule daily, with tasks managed by Airflow.
 

## Prerequisites

- Docker and Docker Compose installed on your system.

## Setup

1. **Clone the Repository**

   Clone this repository to your local machine:

   ```sh
   git clone https://github.com/yourusername/testeairflow.git
   cd testeairflow


2. **Set up permissions**
    
    Ensure that config.sh is executable:

    ```sh
    chmod +x config.sh

2. **Run Docker compose**

    ```sh
    docker-compose up -d

# Usage

## Running the Pipeline

The pipeline is scheduled to run every day by default. You can also trigger it manually from the Airflow UI.

Access Airflow UI

Open your web browser and go to http://localhost:8080 to access the Airflow web interface.


# Observations

The pipeline is incomplete to the chalenge given. 

The part that is working is the extraction of csv and postgres by meltano and orchestrate by airflow

The second part, where the data should be loaded in the postgres, and the final part where it was suposed to run a query that shows the orders and its details, are not completed.

With more time to learn and implement I would be able to complete he task.



Thank you.