# https://www.terraform.io/language/settings/backends/gcs

terraform {
  backend "gcs" {
    bucket      = "armageddonbucket01" # Insert your bucket name here
    prefix      = "terraform/state"
    credentials = "project007part2-3d32fc61ae49.json" # Insert your JSON key here
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
