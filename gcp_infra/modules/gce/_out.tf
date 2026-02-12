output "output" {
  value = {
    external_id = google_compute_instance.public_vm.network_interface[0].access_config[0].nat_ip
    name        = google_compute_instance.public_vm.name
    zone        = google_compute_instance.public_vm.zone
  }
}