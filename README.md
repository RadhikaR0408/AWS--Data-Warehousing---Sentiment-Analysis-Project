# AWS--Data-Warehousing---Sentiment-Analysis-Project

## Project Overview
This project demonstrates an end-to-end **data analytics pipeline** to analyze sentiment from social media data using AWS services. It ingests raw data into **S3** and processes it with **Athena** to produce analytics-ready datasets.

> **Note:** The Silver layer is skipped in this implementation to reduce complexity and cost. Athena queries handle the necessary transformations on the fly.

---

## Architecture

- **Bronze Layer:** Stores raw social media data in S3 (CSV/JSON format).  
- **Gold Layer:** Aggregated and analytics-ready tables created via Athena queries.

---

## Features

- **Serverless & Cost-Efficient:** Built entirely on AWS Free Tier services.  
- **Scalable:** Can handle large datasets without manual infrastructure.  
- **Data Transformation:** Athena performs filtering, aggregation, and enrichment to prepare Gold tables.

---

## Tools & Services Used

- **Amazon S3** – Object storage for raw and processed datasets.  
- **Amazon Athena** – Serverless SQL queries for data processing.  
- **AWS Free Tier** – No additional costs for experimentation.

---

## Setup Instructions

1. **Prepare S3 Buckets**
   - Create a bucket for raw (Bronze) data.
   - Create a bucket for processed (Gold) data.

2. **Upload Data**
   - Upload the social media dataset (CSV/JSON) into the Bronze bucket.

3. **Athena Setup**
   - Create a database in Athena.
   - Define tables pointing to the Bronze bucket.
   - Run queries to clean and aggregate data into Gold tables.

---
## Project Outcome

1. Built an end-to-end serverless analytics pipeline.

2. Produced daily sentiment summaries for social media data.

3. Demonstrated practical Bronze → Gold architecture using AWS Free Tier.

---

## Author

Radhika - Cloud & Data Engineering enthusiast
