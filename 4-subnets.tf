# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

# Public Subnet
resource "google_compute_subnetwork" "armT03-vpc-public" {
  name          = "armT03-vpc-public"
  ip_cidr_range = "10.230.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.armT03-vpc.id
}

# Private Subnet
resource "google_compute_subnetwork" "armT03-vpc-private" {
  name                     = "armT03-vpc-private"
  ip_cidr_range            = "10.236.0.0/24"
  region                   = "africa-south1"
  network                  = google_compute_network.armT03-vpc.id
  private_ip_google_access = true
}
