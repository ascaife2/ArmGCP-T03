# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_autoscaler

resource "google_compute_region_autoscaler" "africa-autoscaler" {
  name   = "africa-autoscaler"
  region = "africa-south1"
  target = google_compute_region_instance_group_manager.africa-mig.id

  autoscaling_policy {
    max_replicas    = 6
    min_replicas    = 3
    cooldown_period = 60

    cpu_utilization {
      target = 0.8
    }
  }
}
