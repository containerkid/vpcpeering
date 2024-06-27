resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  description             = var.vpc_desc
}

output "vpc_network_name" {
  value = google_compute_network.vpc_network.name
}
