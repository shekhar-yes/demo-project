resource "google_compute_network"  "t-vpc09" {
 project = "devops-502817"
name = "t-vpc09"
auto_create_subnetworks = false
  
}

## subnet range 10.0.1.0/25  
us-central1 (Iowa)

resource "google_compute_subnetwork"  "subnet2" {

name = "sunbet2"
region = "us-central1"
ip_cidr_range = "10.0.1.0/25"
network = google_compute_network.t-vpc09.id
  
}

## allow 80

