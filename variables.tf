variable "credentials" {
  description = "Path to the service account key file"
  type        = string
}

variable "project_id" {
  description = "The project ID"
  type        = string
}

variable "region" {
  description = "The region"
  type        = string
}

variable "subnets_vpc10" {
  description = "List of subnets for vpc10"
  type        = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "subnets_vpc11" {
  description = "List of subnets for vpc11"
  type        = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "subnets_vpc1" {
  description = "List of subnets for vpc1"
  type        = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "subnets_vpc2" {
  description = "List of subnets for vpc2"
  type        = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "subnets_vpc3" {
  description = "List of subnets for vpc3"
  type        = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "subnets_vpc4" {
  description = "List of subnets for vpc4"
  type        = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "subnets_vpc5" {
  description = "List of subnets for vpc5"
  type        = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "peerings" {
  description = "List of VPC peerings"
  type        = list(object({
    name          = string
    network       = string
    peer_network  = string
  }))
}
