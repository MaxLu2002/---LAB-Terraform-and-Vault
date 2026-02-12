resource "google_compute_subnetwork" "public_subnet" {
  name          = "${var.labels["builder"]}-public-subnet"
  ip_cidr_range = local.public_subnet_cidr
  region        = var.vpc_region
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "private_subnet" {
  name                     = "${var.labels["builder"]}-private-subnet"
  ip_cidr_range            = local.private_subnet_cidr
  region                   = var.vpc_region
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = true
}