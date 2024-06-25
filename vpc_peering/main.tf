terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 3.5.0"
    }
  }
}

resource "google_compute_network_peering" "vpc_peering" {
  count      = length(var.peerings)
  name       = var.peerings[count.index].name
  network    = var.peerings[count.index].network
  peer_network = var.peerings[count.index].peer_network
}
