
# dbt_sales_analytics_pipeline

## Overview
This project implements an analytics engineering workflow using **dbt (Data Build Tool)**.
It demonstrates how to design a **Bronze–Silver–Gold** data transformation pipeline to convert raw sales data into analytics-ready models.

The project applies **SQL**, **CTEs**, **Jinja templating**, **custom macros**, and **automated data quality tests**, following real-world analytics engineering best practices.

---

## Architecture

### Bronze Layer
- Raw ingestion of source tables
- Minimal transformations
- One-to-one mapping with upstream data

### Silver Layer
- Cleaned and enriched data
- Business logic applied
- Joins across entities
- Derived metrics using Jinja macros

### Gold Layer
- Aggregated, analytics-ready models
- Optimized for reporting and BI tools

---

## Project Structure

```text
ilyas_dbt_learning/
├── analyses/          # Exploration & Jinja examples
├── macros/            # Custom dbt macros
├── models/
│   ├── bronze/        # Raw models
│   ├── silver/        # Cleaned & enriched models
│   ├── gold/          # Analytics models
│   └── source/        # Source definitions
├── seeds/             # Lookup tables (CSV)
├── snapshots/         # Snapshot models
├── tests/             # Generic & custom tests
└── dbt_project.yml
```





Setup & Execution
Requirements

Python 3.9+

dbt installed

A configured data warehouse (e.g. Databricks)

Installation
pip install -r requirements.txt





Configuration

Create a local profiles.yml file (not committed) and configure credentials using environment variables.

Example:
token: "{{ env_var('DATABRICKS_TOKEN') }}"





Run the Pipeline

Build all models:
dbt run





Run data quality tests:
dbt test




Generate dbt documentation:
dbt docs generate
dbt docs serve




Data Quality

This project includes automated data validation using dbt tests:

Primary key uniqueness

Not-null constraints

Accepted values checks

Custom generic tests

These tests ensure data reliability across all layers.





