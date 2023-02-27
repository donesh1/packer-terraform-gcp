locals {
  project_id = "packer-lab-378821"
  credentials = "packer-lab-svc.json"
  region = "northamerica-northeast1"
  zone = "northamerica-northeast1-a"
  network = "projects/packer-lab-378821/global/networks/default"
  subnet = "projects/packer-lab-378821/regions/northamerica-northeast1/subnetworks/default"


}

terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "= 3.90"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "= 3.90"
    }
  }
}

provider "google-beta" {
  project     = local.project_id
  region      = local.region
  credentials = local.credentials
}

resource "google_compute_instance" "terraform-vm" {
  provider     = google-beta
  project = local.project_id
  zone = local.zone
  boot_disk {
    initialize_params {
      image = "packer-image-1677463532"
    }
  }
  name         = "terraform-test01"
  machine_type = "e2-standard-2"
  network_interface {
    network = local.network
    //subnetwork = local.subnet
  }
 
  scheduling {
    automatic_restart = true
  }
  can_ip_forward = true
}
