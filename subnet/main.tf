terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 3.5.0"
    }
  }
}

resource "google_compute_subnetwork" "subnet" {
  count        = length(var.subnets)
  name         = var.subnets[count.index].name
  ip_cidr_range = var.subnets[count.index].cidr
  region       = var.subnets[count.index].region
  network      = var.vpc
  project      = var.project_id
}
