# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network

resource "google_compute_network" "bam5-vpc" {
  name                    = "bam5-vpc"
  auto_create_subnetworks = false
}
