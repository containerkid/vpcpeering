resource "google_compute_subnetwork" "subnet" {
  for_each = { for subnet in var.subnets : subnet.name => subnet }

  name          = each.value.name
  ip_cidr_range = each.value.cidr
  region        = each.value.region
  network       = var.network
}

output "subnet_names" {
  value = [for s in google_compute_subnetwork.subnet : s.name]
}
