# VM 1 - Ubuntu in us-east1
resource "google_compute_instance" "vm_ubuntu" {
  name         = "vm-ubuntu"
  machine_type = "e2-micro"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network    = google_compute_network.my_vpc.id
    subnetwork = google_compute_subnetwork.subnet_3.id
    access_config {}
  }

  tags = ["web-server"]
}

# VM 2 - Debian in europe-west1
resource "google_compute_instance" "vm_debian" {
  name         = "vm-debian"
  machine_type = "e2-micro"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.my_vpc.id
    subnetwork = google_compute_subnetwork.subnet_4.id
    access_config {}
  }

  tags = ["web-server"]
}
