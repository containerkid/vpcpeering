resource "google_compute_network_peering" "vpc_peering" {
  for_each = { for peering in var.peerings : peering.name => peering }

  name         = each.value.name
  network      = each.value.network
  peer_network = each.value.peer_network
}

resource "google_compute_network_peering" "reverse_vpc_peering" {
  for_each = { for peering in var.peerings : peering.name => peering }

  name         = "reverse-${each.value.name}"
  network      = each.value.peer_network
  peer_network = each.value.network
}

output "peering_connections" {
  value = [for p in google_compute_network_peering.vpc_peering : p.name]
}
