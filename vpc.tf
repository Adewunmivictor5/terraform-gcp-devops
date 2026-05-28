# Existing VPC
resource "google_compute_network" "my_vpc" {
  name                    = "my-vpc"
  auto_create_subnetworks = false
}

# Subnet 1 - us-east1
resource "google_compute_subnetwork" "subnet_3" {
  name          = "subnet-3"
  ip_cidr_range = "10.0.3.0/24"
  region        = "us-east1"
  network       = google_compute_network.my_vpc.id
}

# Subnet 2 - europe-west1
resource "google_compute_subnetwork" "subnet_4" {
  name          = "subnet-4"
  ip_cidr_range = "10.0.4.0/24"
  region        = "europe-west1"
  network       = google_compute_network.my_vpc.id
}

# Firewall rule for HTTP/HTTPS
resource "google_compute_firewall" "allow_http_https" {
  name    = "allow-http-https"
  network = google_compute_network.my_vpc.name
  source_ranges = ["0.0.0.0/0"]    # <-- added line

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
}
