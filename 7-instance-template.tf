# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance_template

resource "google_compute_instance_template" "brazil-instance-template" {
  name         = "brazil"
  description  = "Brazil Instance Template"
  machine_type = "e2-medium"
  region       = "southamerica-east1"

  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  network_interface {
    subnetwork = google_compute_subnetwork.bam5-private.id
    access_config {}
  }

  tags = ["bam5-internal"]

  metadata_startup_script = file("./brazil.sh")
}
