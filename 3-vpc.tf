# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network

resource "google_compute_network" "armt03-vpc" {
  name                    = "armt03-vpc"
  auto_create_subnetworks = false
}
