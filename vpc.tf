# VPC
resource "google_compute_network" "t_vpc09" {
  project                 = "devops-502817"
  name                    = "t-vpc09"
  auto_create_subnetworks = false
}

# Subnet
# CIDR: 10.0.1.0/25
resource "google_compute_subnetwork" "subnet2" {
  project       = "devops-502817"
  name          = "subnet2"
  region        = "us-central1"
  ip_cidr_range = "10.0.1.0/25"
  network       = google_compute_network.t_vpc09.id
}
