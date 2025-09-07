# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall

# Allow RDP
resource "google_compute_firewall" "rdp-allow" {
  name    = "allow-rdp"
  network = google_compute_network.armT03-vpc.name

  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["rdp-public"]
}

# Allow Internal Traffic
resource "google_compute_firewall" "allow-internal" {
  name    = "allow-internal"
  network = google_compute_network.armT03-vpc.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "22"]
  }

  source_tags = ["bam5-access"]
  target_tags = ["bam5-internal"]
}

# Allow Health Check
resource "google_compute_firewall" "allow_health_check" {
  name    = "allow-health-check"
  network = google_compute_network.armT03-vpc.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
  target_tags   = ["bam5-internal"]
}
