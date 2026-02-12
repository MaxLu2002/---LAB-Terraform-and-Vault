resource "google_compute_network" "vpc_network" {
  name                    = "${var.labels["builder"]}-vpc"
  auto_create_subnetworks = false
}
