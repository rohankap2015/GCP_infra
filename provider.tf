terraform {
  required_providers {
      google = {
        source = "hashicorp/google"
       }
     }
  }

provider "google" {
  project = "internal-interview-candidates"
  region = "us-central1"
  zone = "us-central1-a"
}

