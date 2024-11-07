terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.25.0"
    }
  }

  backend "gcs" {
    bucket      = "amcdonald-k8s-state-2"  # Added the closing quote here
    prefix      = "terraform/state-110824"
    credentials = "key.json"
  }
}


provider "google" {
  # Configuration options
  project     = var.project
  region      = local.region
  zone        = var.zone
  credentials = "key.json"
}


