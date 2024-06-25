variable "vpc" {
  description = "The VPC network"
  type        = string
}

variable "project_id" {
  description = "The project ID"
  type        = string
}

variable "subnets" {
  description = "List of subnets"
  type = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}