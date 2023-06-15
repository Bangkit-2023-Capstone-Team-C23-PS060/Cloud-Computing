# Deploying to GCP

Here are the steps to manually deploy our back-end to Google Cloud Platform. Every command is run in Cloud Shell unless specified otherwise.

GCP services used:
- App Engine
- Cloud Run
- Cloud SQL
- Cloud Storage

## GCP architecture

![gambar GCP architecture](gcp-architecture.png)
  
## Set environment variables and enable services

```bash
export PROJECT_ID=$(gcloud config get-value project)
export PROJECT_NUMBER=$(gcloud projects describe $PROJECT_ID --format='value(projectNumber)')
export REGION=asia-southeast2

gcloud services enable \
    sqladmin.googleapis.com \
    run.googleapis.com 
```

## GCS setup

1. Make Bucket.
```
gsutil mb -l asia-southeast2 -b on gs://<replace with unique name for save mysql file>
```
2. Upload the .sql file provided to the created bucket.
 
## Cloud SQL setup

1. Create MySQL instance.
   ```
   gcloud sql instances create elektronio-sql \
     --project=$PROJECT_ID \
     --no-assign-ip \
     --database-version=MYSQL_8_0 \
     --cpu=2 \
     --memory=4GB \
     --region=$REGION \
     --root-password=anticederoot123
3. Create database.
```
gcloud sql databases create elektronio-db --instance=elektronio-sql
5. Create user.
6. Import MySQL database.
   i. Click elektronio-sql instance.
  ii. Click import from the top menu.
 iii. Browse and select the .sql file uploaded before.
  iv. For destination, choose elektronio-db.
   v. Click import.
7. Show SQL instance IP, copy and save for later use.
8. Add Cloud SQL Client role to Compute Engine service account.
   
## Node.js web server with App Engine

## Flask With Cloud Run

  ##

  ##
