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

To get started with the project, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/dbt-snowflake-airflow-project.git

2. Navigate to the project directory
   ```bash
   cd dbt-snowflake-airflow-project

3. Build the Docker image and start the containers:
   ```bash
   docker-compose up --build

4. Access the Airflow UI by visiting http://localhost:8080 in your web browser.

