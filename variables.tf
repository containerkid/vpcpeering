variable "project1_id" {
  description = "The project ID for project 1"
  type        = string
}

variable "project2_id" {
  description = "The project ID for project 2"
  type        = string
}

variable "vpc_20_subnets" {
  description = "Subnets for VPC 20"
  type = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "vpc_15_subnets" {
  description = "Subnets for VPC 15"
  type = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "vpc_30_subnets" {
  description = "Subnets for VPC 30"
  type = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "vpc_peerings" {
  description = "VPC Peering configurations"
  type = list(object({
    name         = string
    network      = string
    peer_network = string
  }))
}
