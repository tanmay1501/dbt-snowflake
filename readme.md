# Snowflake Data Pipeline with DBT and Apache Airflow

![Airflow](https://github.com/tanmay1501/dbt-snowflake/blob/main/airflow.png)
![database](https://github.com/tanmay1501/dbt-snowflake/blob/main/database.png)

## Project Overview

This project demonstrates the process of creating a **data pipeline** in Snowflake using **DBT** (Data Build Tool) and **Apache Airflow**. The pipeline works on a sample dataset from **TPC-H** provided by Snowflake and utilizes DBT to build views and tables. The pipeline is then deployed using **Astronomer Cosmos** (a managed service for Airflow) in a **Docker container**.

### Key Technologies:
- **Snowflake**
- **DBT (Data Build Tool)**
- **Apache Airflow**
- **Astronomer Cosmos**
- **Docker**

## Project Workflow

### 1. **Snowflake Setup**
- Created a **database**, **warehouse**, and **schema** in Snowflake.
- Worked with **TPC-H** sample data provided by Snowflake for this project.
  
### 2. **DBT Connection with Snowflake**
- Connected **DBT** with Snowflake to execute models locally in VS Code.
- Developed two primary views and tables:
  - **Staging**
  - **Mart**

### 3. **Creating Tables and Views in DBT**
- Wrote DBT models that extract data from **TPC-H** schema and transformed it.
- The models generate **staging views** and **mart tables** in Snowflake.

### 4. **Apache Airflow Deployment**
- Set up **Apache Airflow** in a **Docker container** using **Astronomer Cosmos**.
- Deployed the Airflow container for orchestrating the data pipeline.
  
### 5. **Integrating Snowflake with Airflow**
- Created a **Snowflake connection** in Apache Airflow.
- Developed **DAGs** to manage the ETL tasks and trigger the data pipeline.

### 6. **Deployment of DAGs**
- Copied the **data pipeline files** into the **DAG folder** of the **Astronomer Cosmos** project.
- Triggered the DAG to execute the pipeline tasks, including:
  - **Extracting data** from Snowflake.
  - **Transforming the data** using DBT.
  - **Loading the results** into Snowflake views and tables.



