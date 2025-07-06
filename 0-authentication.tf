# https://registry.terraform.io/providers/hashicorp/google/latest/docs

provider "google" {
  project     = "your-project-id"           # Your Project ID
  region      = "us-central1"               # Your Region
  credentials = "yourjsonfile.json"         # Your JSON Key
}
