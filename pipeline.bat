@echo off
python fetchdata457api.py
gcloud storage cp data.json gs://batchdata457api
bq load --autodetect --source_format=NEWLINE_DELIMITED_JSON batchdata.apidata gs://batchdata457api/data.json
bq query --nouse_legacy_sql --destination_table=batchdata.daily_user_summary --replace "SELECT userId, COUNT(*) AS total_posts FROM batchdata.apidata GROUP BY userId"
bq extract --destination_format=CSV batchdata.daily_user_summary gs://batchdata457api/daily_user_summary.csv