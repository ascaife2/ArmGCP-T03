# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

# Public Subnet
resource "google_compute_subnetwork" "bam5-public" {
  name          = "bam5-public"
  ip_cidr_range = "10.235.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.bam5-vpc.id
}

# Private Subnet
resource "google_compute_subnetwork" "bam5-private" {
  name                     = "bam5-private"
  ip_cidr_range            = "10.236.0.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.bam5-vpc.id
  private_ip_google_access = true
}
