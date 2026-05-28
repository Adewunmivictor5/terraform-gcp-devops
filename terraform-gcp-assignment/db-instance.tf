hcl
# MySQL Instance
resource "google_sql_database_instance" "mysql_instance" {
  name             = "mysql-instance-debodinho"
  database_version = "MYSQL_8_0"
  region           = "us-east1"

  settings {
    tier = "db-f1-micro"
  }

  deletion_protection = false
}

# PostgreSQL Instance
resource "google_sql_database_instance" "postgres_instance" {
  name             = "postgres-instance-debodinho"
  database_version = "POSTGRES_15"
  region           = "europe-west1"

  settings {
    tier = "db-f1-micro"
  }

  deletion_protection = false
}
