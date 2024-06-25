variable "project_id" {
  description = "The project ID"
  type        = string
}

variable "peerings" {
  description = "List of VPC peerings"
  type = list(object({
    name         = string
    network      = string
    peer_network = string
  }))
}