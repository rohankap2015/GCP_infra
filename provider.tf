# GCP provider

terraform {
  required_providers {
      google = {
        source = "hashicorp/google"
       }
     }
  }

provider "google" {
  project = "internal-interview-candidates"
  region = "europe-west1"
  zone = "europe-west1-b"
}