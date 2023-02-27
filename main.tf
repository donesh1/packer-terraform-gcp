
ogle" {
  version = "3.5.0"

  credentials = file("packer-lab-svc.json")

  project = "packer-lab-378821"
  region  = "northamerica-northeast1"
  zone    = "northamerica-northeast1-a"
}

resource "google_compute_instance" "ActiveDriectory" {
  name = "Lab-AD01"
  machine_type = "f1-micro"

  boot_disk {
   initialize_params {
     image = "packer-image-1677370549"
   }
}
 network_interface {
   network = "default"
}
}

