# Data Transformation Workflow with DBT LABS, SNOWFLAKE AND AIRFLOW

## _Dbt-Airflow-Demo_

[![N|able](https://user-images.githubusercontent.com/76805373/152945012-5d715499-4498-4d8b-85c7-b5b8a6b82da9.png)](https://www.n-able.biz/)

This project demonstrates a data transformation workflow using dbt Labs, Snowflake, and Airflow, orchestrated with Docker. It provides a scalable and efficient solution for transforming and analyzing data stored in Snowflake.

## Introduction

The goal of this project is to showcase how dbt Labs, Snowflake, and Airflow can be combined to create a powerful data transformation pipeline. The project leverages Docker to simplify the setup process and ensure consistency across environments.

## Features

- **dbt Labs**: dbt (data build tool) is used for transforming and modeling data. It provides a structured and version-controlled approach to writing SQL-based transformations.
- **Snowflake**: Snowflake is used as the data warehouse to store and manage the data. Snowflake's scalability, elasticity, and built-in features make it an ideal choice for data processing.
- **Airflow**: Airflow is used to orchestrate the data transformation workflow. It allows you to define complex workflows as DAGs and provides a rich set of features for scheduling, monitoring, and managing tasks.
- **Docker**: The project is containerized using Docker, which simplifies the setup process by encapsulating all the required services and dependencies within isolated containers.

## Prerequisites

Before running this project, ensure that you have the following prerequisites installed:

- Docker
- Docker Compose

## Getting Started

### with Airflow

1. Clone the repository:

   ```bash
   git clone https://github.com/avishka-nable/Dbt-Airflow-Demo.git

2. Navigate to the project directory
   ```bash
   cd dockerairflow

3. Build the Docker image and start the containers:
   ```bash
   docker compose up --build

4. Access the Airflow UI by visiting http://localhost:8080 in your web browser.

### with Dbt

1. Clone the repository to your local machine:
   ```sh
   git clone https://github.com/nableanalytics/dbt-covid-dw.git
   ```
2. Navigate to the project directory:
   ```sh
  cd dbt-project
   ```

**To build the data models and transform your data, follow these steps:**  

3. Test the database connection and show information for debugging purposes ####
   ```sh
   dbt debug
   ```
4. Download dependencies for a project #####
```sh
dbt deps
```

5. Load CSV files into the database #####
```sh
dbt seed
```
This command will load csv files located in the seed-paths directory of this dbt project into your data warehouse.

6. To execute the compiled SQL transformations and materialize the models, use the following command: #####
```sh
dbt run
```
Running this command will create or update the tables/views defined in this project. It applies the transformations defined in the models and loads the data into the target database.

##### If you want to perform a full refresh of the data models, including dropping and recreating the tables/views, use the following command: #####
```sh
dbt run --full-refresh
```
This command ensures that the data models reflect the latest state of the source data.
## Project Structure

The project directory has the following structure:  
.  
├── docker-compose.yml  
├── dags  
│   ├── init.py  
│   ├── analysis.py  
│   ├── tranformation.py  
│   └── ...  
├── dbt_project  
│   ├── models  
│   │   ├── analysis  
│   │   └── transformation  
│   └── dbt_project.yml  
│   └── profiles.yml  
  
-**docker-compose.yml**: Defines the services and their configurations for Docker Compose.  
-**dags**: Contains Airflow related files, including DAGs that define the workflows.  
-**dbt_project**: Contains dbt models that define the transformations to be applied on Snowflake data.  

## Configuration
1. Open the dbt_project.yml file and update the necessary configurations, such as **target database**, **credentials**, and other project-specific settings.
2. Configure your database connection by creating a **profiles.yml** file in the ~/.dbt directory. Refer to the [dbt Profiles Documentation](https://docs.getdbt.com/reference/warehouse-profiles) for more details.

## Workflow

1. Create the necessary tables and data structures in Snowflake using the provided SQL scripts in the snowflake directory.
2. Define your dbt models in the dbt directory. These models will define the transformations to be applied on the data in Snowflake.
3. Create DAGs in the airflow/dags directory to orchestrate the execution of dbt tasks. The provided dbt_dag.py file serves as a starting point.
4. Start the Airflow scheduler and web server using Docker Compose. Visit http://localhost:8080 in your web browser to access the Airflow UI.
5. Enable and trigger the desired DAG(s) in the Airflow UI to initiate the dbt transformation process.



