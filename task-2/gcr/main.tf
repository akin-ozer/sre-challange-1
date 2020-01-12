provider "google" {
  credentials = "${file("/home/realvega/googleproj.json")}"
  project     = "core-depth-264814"
  region      = "europe-west6"
}

data "google_container_registry_repository" "challange-registry" {
  region = "eu"
  project = "core-depth-264814"
}

output "gcr_location" {
  value = data.google_container_registry_repository.challange-registry.repository_url
}
