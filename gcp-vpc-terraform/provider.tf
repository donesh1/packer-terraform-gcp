terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.54.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "packer-lab-378821"
  region  = "northamerica-northeast1"
  zone = "northamerica-northeast1-a"
  credentials = "packer-lab-svc.json"
}