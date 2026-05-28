# Bucket 1 - US
resource "google_storage_bucket" "bucket_us" {
  name          = "devops-bucket-us-debodinho"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}

# Bucket 2 - EU
resource "google_storage_bucket" "bucket_eu" {
  name          = "devops-bucket-eu-debodinho"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true
}
