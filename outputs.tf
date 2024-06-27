output "vpc_networks" {
  value = {
    vpc10 = module.vpc10.vpc_network_name
    vpc11 = module.vpc11.vpc_network_name
    vpc1  = module.vpc1.vpc_network_name
    vpc2  = module.vpc2.vpc_network_name
    vpc3  = module.vpc3.vpc_network_name
    vpc4  = module.vpc4.vpc_network_name
    vpc5  = module.vpc5.vpc_network_name
  }
}

output "subnet_networks" {
  value = {
    subnets_vpc10 = module.subnets_vpc10.subnet_names
    subnets_vpc11 = module.subnets_vpc11.subnet_names
    subnets_vpc1  = module.subnets_vpc1.subnet_names
    subnets_vpc2  = module.subnets_vpc2.subnet_names
    subnets_vpc3  = module.subnets_vpc3.subnet_names
    subnets_vpc4  = module.subnets_vpc4.subnet_names
    subnets_vpc5  = module.subnets_vpc5.subnet_names
  }
}

output "vpc_peerings" {
  value = module.vpc_peering.peering_connections
}
