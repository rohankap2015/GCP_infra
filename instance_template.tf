resource "google_compute_instance_template" "rohan-tpl" {
  name         = "template"
  machine_type = "e2-micro"

  disk {
    source_image = "debian-cloud/debian-11"
    auto_delete  = true
    disk_size_gb = 10
    boot         = true
  }

  network_interface {
    network = "vpc-network"
  }


  can_ip_forward = true
}

