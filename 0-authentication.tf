# https://registry.terraform.io/providers/hashicorp/google/latest/docs

provider "google" {
  project     = "project007part2"                   # Your Project ID
  region      = "africa-south1"                     # Your Region
  credentials = "project007part2-3d32fc61ae49.json" # Your JSON Key
}
