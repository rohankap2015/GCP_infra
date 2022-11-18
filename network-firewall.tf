# Network Firewall Rules  

# Allow http
resource "google_compute_firewall" "allow-http" {
  name    = "${var.app_name}-fw-allow-http"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_tags = ["http"]
  source_ranges = ["0.0.0.0/0"]
}

# allow https
resource "google_compute_firewall" "allow-https" {
  name    = "${var.app_name}-fw-allow-https"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  source_tags = ["https"]
  source_ranges = ["0.0.0.0/0"]
}

# allow ssh
resource "google_compute_firewall" "allow-ssh" {
  name    = "${var.app_name}-fw-allow-ssh"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_tags = ["ssh"]
  source_ranges = ["0.0.0.0/0"]
}

# allow rdp
resource "google_compute_firewall" "allow-rdp" {
  name    = "${var.app_name}-fw-allow-rdp"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }
  source_tags = ["rdp"]
}
