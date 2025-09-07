# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network

resource "google_compute_network" "armT03-vpc" {
  name                    = "armT03-vpc"
  auto_create_subnetworks = false
}
