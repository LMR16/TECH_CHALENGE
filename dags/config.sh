#!/bin/sh

# Run docker
# docker-compose up -d

# Navigate to the Meltano project directory
cd meltano

# Export the current date
export CURRENT_DATE=$(date +%Y-%m-%d)
echo "Current Date: $CURRENT_DATE"

# Run Meltano ETL - CSV
meltano elt tap-csv target-csv > "../logs/meltano/csv/meltano_csv_$CURRENT_DATE.log" 2>&1

# Check if the Meltano ETL job was successful
if [ $? -eq 0 ]; then
  echo "Meltano ETL - CSV - job completed successfully."
else
  echo "Meltano ETL - CSV - job failed. Check the log file for details: ../logs/meltano_elt_$CURRENT_DATE.log"
fi

# Run meltano ETL - postgres
meltano elt tap-postgres target-jsonl > "../logs/meltano/postgres/meltano_postgres_$CURRENT_DATE.log" 2>&1

# Check if the Meltano ETL job was successful
if [ $? -eq 0 ]; then
  echo "Meltano ETL - POSTGRES - job completed successfully."
else
  echo "Meltano ETL - POSTGRES - job failed. Check the log file for details: ../logs/meltano_elt_$CURRENT_DATE.log"
fi
