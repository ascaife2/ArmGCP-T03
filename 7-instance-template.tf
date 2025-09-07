# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance_template

resource "google_compute_instance_template" "africa-instance-template" {
  name         = "africa-instance-template"
  description  = "africa Instance Template"
  machine_type = "e2-medium"
  region       = "africa-south1"

  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  network_interface {
    subnetwork = google_compute_subnetwork.armt03-vpc-private.id
    access_config {}
  }

  tags = ["bam5-internal"]

  metadata_startup_script = file("./movie.sh")
}
