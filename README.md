# 🚀 GCP Batch Data Pipeline with CLI + Dashboard

This project demonstrates a fully automated batch data pipeline using Google Cloud Platform tools, Python, and Looker Studio.

## 🔧 Technologies Used
- Python 3
- Google Cloud Storage (GCS)
- BigQuery
- Looker Studio
- gcloud CLI
- bq CLI

## 📊 Pipeline Overview

1. Fetch data from a public API
2. Save data as NDJSON
3. Upload to Google Cloud Storage
4. Load into BigQuery
5. Perform SQL-based transformations
6. Export to GCS as CSV
7. Visualize in Looker Studio

## 📂 Files

- `fetchdata457api.py` — Python script to fetch and store API data
- `pipeline.bat` — Automates the entire ETL flow
- `data/sample_data.json` — Sample NDJSON file
- `diagrams/pipeline_diagram.png` — Architecture overview
- `requirements.txt` — Python libraries

## 🔁 Run the Pipeline

```bash
# Run from CLI
pipeline.bat
```

## 📈 Dashboard

Use the exported CSV from GCS as a data source in Looker Studio and build your visualizations.