markdown
# Terraform GCP Infrastructure

Provisioning GCP resources using Terraform including subnets, VMs, storage buckets and database instances.

## Resources Created

### Subnets
- subnet-3: us-east1 (10.0.3.0/24)
- subnet-4: europe-west1 (10.0.4.0/24)

### Firewall Rules
- allow-http-https: Allows HTTP/HTTPS traffic on both subnets

### Compute Engine VMs
- vm-ubuntu: Ubuntu 22.04 in us-east1
- vm-debian: Debian 11 in europe-west1

### Cloud Storage Buckets
- devops-bucket-us-debodinho: US location
- devops-bucket-eu-debodinho: EU location

### Database Instances
- mysql-instance-debodinho: MySQL 8.0 in us-east1
- postgres-instance-debodinho: PostgreSQL 15 in europe-west1

## How to Deploy

### Prerequisites
- Terraform installed
- GCP account with billing enabled
- gcloud CLI authenticated

### Steps
1. Initialize Terraform:
   terraform init

2. Preview changes:
   terraform plan

3. Apply changes:
   terraform apply

4. Destroy resources:
   terraform destroy
