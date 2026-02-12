output "output" {
  value = {
    name = google_compute_network.vpc_network.name
    public_subnet_self_link = google_compute_subnetwork.public_subnet.self_link
    private_subnet_self_link = google_compute_subnetwork.private_subnet.self_link
  }
}