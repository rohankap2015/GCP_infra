resource "google_compute_network" "vpc_network" {
  project                 = "internal-interview-candidates"
  name                    = "vpc-network"
  auto_create_subnetworks = true
}

