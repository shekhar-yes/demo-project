data "google_compute_network" "existing_vpc" {
  project = "devops-502817"
  name    = "t-vpc09"
}

data "google_compute_subnetwork" "existing_subnet" {
  project = "devops-502817"
  name    = "subnet2"
  region  = "us-central1"
}

data "google_service_account" "existing_sa" {
  project    = "devops-502817"
  account_id = "k8s-157"
}


resource "google_compute_instance" "vm01" {
  project      = "devops-502817"
  name         = "vm01"
  zone         = "us-central1-a"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 20
      type  = "pd-balanced"
    }
  }

  network_interface {
    subnetwork = data.google_compute_subnetwork.existing_subnet.id

    access_config {}
  }

  service_account {
    email  = data.google_service_account.existing_sa.email
    scopes = ["cloud-platform"]
  }
}
