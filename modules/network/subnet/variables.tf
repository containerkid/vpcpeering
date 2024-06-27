variable "project_id" {
  description = "The project ID"
  type        = string
}

variable "network" {
  description = "The VPC network name"
  type        = string
}

variable "subnets" {
  description = "List of subnets"
  type        = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}
