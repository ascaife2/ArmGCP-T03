# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

# Public Subnet
resource "google_compute_subnetwork" "armt03-vpc-public" {
  name          = "armt03-vpc-public"
  ip_cidr_range = "10.230.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.armt03-vpc.id
}

# Private Subnet
resource "google_compute_subnetwork" "armt03-vpc-private" {
  name                     = "armt03-vpc-private"
  ip_cidr_range            = "10.236.0.0/24"
  region                   = "africa-south1"
  network                  = google_compute_network.armt03-vpc.id
  private_ip_google_access = true
}
