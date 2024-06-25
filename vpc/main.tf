terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 3.5.0"
    }
  }
}

resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  project                 = var.project_id

  lifecycle {
    prevent_destroy = true
  }
}

output "network_name" {
  value = google_compute_network.vpc.name
}

output "network_self_link" {
  value = google_compute_network.vpc.self_link
}
