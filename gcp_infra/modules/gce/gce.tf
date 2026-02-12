resource "google_compute_instance" "public_vm" {
  name         = "${var.labels["builder"]}-${var.gce_type}-${var.gce_name}"
  machine_type = "e2-micro"
  zone         = "${var.gce_region}-${var.gce_zone}"
  
  metadata = {
    enable-oslogin = var.os_login
  }

  boot_disk {
    initialize_params {
      image = var.gce_image
    }
  }

  network_interface {
    subnetwork = var.gce_subnet
    access_config {
      nat_ip = null
    }
  }

  service_account {
    scopes = ["cloud-platform"]
  }

  labels = var.labels
}
