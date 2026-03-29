# 🍺 Brewery Data Transformation Project

This project demonstrates a complete **Data Engineering & Analytics pipeline**, focusing on transforming raw brewery data into clean, business-ready insights using modern data stack tools.

##   Architecture Overview
The pipeline is designed with a modern data stack (MDS) approach:
1. **Extraction**: Python scripts fetch data from Open Brewery DB API.
2. **Orchestration**: GitHub Actions schedules daily runs.
3. **Storage**: Raw data is staged in AWS S3 and loaded into Supabase (PostgreSQL).
4. **Transformation**: dbt Cloud handles data cleaning and modeling (e.g., renaming, formatting).
5. **Visualization**: Power BI Desktop connects directly to Supabase for real-time insights.

##   Dashboard Preview
![Dashboard Screenshot](./dashboard/dashboard.jpg)
*Insights: Analysis of 200 breweries across 54 states/territories, categorized by brewery type.*

##  Tech Stack
* **Languages**: Python, SQL
* **Tools**: dbt Cloud, GitHub Actions, Power BI
* **Data Source:** Open Brewery DB
* **Data Warehouse:** [Supabase](https://supabase.com/) (PostgreSQL)
* **Transformation Tool:** [dbt Cloud](https://www.getdbt.com/)
* **Version Control:** GitHub

##  Data Transformation Workflow
1. **Extraction & Loading:** Raw data was ingested into **Supabase** (PostgreSQL) as the primary data warehouse.
2. **Staging & Cleaning (dbt):** Developed the `stg_breweries` model to clean and standardize the dataset:
    * Filtered out records with missing IDs.
    * Standardized brewery names to **UPPERCASE** for data consistency.
    * Selected key analytical columns: `id`, `name`, `brewery_type`, `city`, `state`, and `country`.
3. **Materialization:** Configured dbt to materialize transformations as **Tables** in the production schema for optimized Power BI performance.

##  Business Insights
The final cleaned dataset was connected to **Power BI** to build an interactive dashboard featuring:
* **Geospatial Mapping:** Visualizing the density of breweries across the US.
* **Market Segmentation:** Analyzing the distribution of brewery types (Micro, Regional, Contract, etc.).
* **Key Metrics:** Total brewery count and state-level breakdowns.

------------------------------------------------------------------
