# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance
# Iowa RDP VM

resource "google_compute_instance" "iowa-windows-vm" {
  name         = "iowa-windows-vm"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"
  tags         = ["rdp-public"]

  boot_disk {
    initialize_params {
      image = "windows-cloud/windows-server-2022-dc-v20250813"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.armT03-vpc-public.name
    access_config {}
  }
}
