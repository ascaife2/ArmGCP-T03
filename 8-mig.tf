# https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_zones

data "google_compute_zones" "africa-available" {
  status = "UP"
  region = "africa-south1"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_group_manager
resource "google_compute_region_instance_group_manager" "africa-mig" {
  name               = "africa-mig"
  region             = "africa-south1"
  base_instance_name = "africa"
  target_size        = 3

  version {
    instance_template = google_compute_instance_template.africa-instance-template.id
  }

  distribution_policy_zones = [
    "africa-south1-a",
    "africa-south1-b",
    "africa-south1-c"
  ]

  named_port {
    name = "http"
    port = 80
  }

  auto_healing_policies {
    health_check      = google_compute_health_check.health-hc.id
    initial_delay_sec = 60
  }
}
