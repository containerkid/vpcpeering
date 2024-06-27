provider "google" {
  credentials = file(var.credentials)
  project     = var.project_id
  region      = var.region
}

# Create VPCs
module "vpc10" {
  source        = "./modules/network/vpc"
  project_id    = var.project_id
  vpc_name      = "vpc10-dbg-safe-01"
  vpc_desc      = "Transit VPC"
}

module "vpc11" {
  source        = "./modules/network/vpc"
  project_id    = var.project_id
  vpc_name      = "vpc11-dbg-safe-05-sbox-24"
  vpc_desc      = "Management VPC"
}

module "vpc1" {
  source        = "./modules/network/vpc"
  project_id    = "dbg-safe-05-sbox-24"
  vpc_name      = "vpc1-dbg-safe-05-sbox-24"
  vpc_desc      = "app1 vpc in sbox5"
}

module "vpc2" {
  source        = "./modules/network/vpc"
  project_id    = "dbg-safe-05-sbox-24"
  vpc_name      = "vpc2-dbg-safe-05-sbox-24"
  vpc_desc      = "app2 vpc in sbox5"
}

module "vpc3" {
  source        = "./modules/network/vpc"
  project_id    = "dbg-safe-05-sbox-24"
  vpc_name      = "vpc3-dbg-safe-05-sbox-24"
  vpc_desc      = "app3 vpc in sbox5"
}

module "vpc4" {
  source        = "./modules/network/vpc"
  project_id    = "dbg-safe-05-sbox-24"
  vpc_name      = "vpc4-dbg-safe-05-sbox-24"
  vpc_desc      = "app4 vpc in sbox5"
}

module "vpc5" {
  source        = "./modules/network/vpc"
  project_id    = "dbg-safe-05-sbox-24"
  vpc_name      = "vpc5-dbg-safe-05-sbox-24"
  vpc_desc      = "app5 vpc in sbox5"
}

# Create Subnets for each VPC
module "subnets_vpc10" {
  source        = "./modules/network/subnet"
  project_id    = var.project_id
  network       = module.vpc10.vpc_network_name
  subnets       = var.subnets_vpc10
}

module "subnets_vpc11" {
  source        = "./modules/network/subnet"
  project_id    = var.project_id
  network       = module.vpc11.vpc_network_name
  subnets       = var.subnets_vpc11
}

module "subnets_vpc1" {
  source        = "./modules/network/subnet"
  project_id    = "dbg-safe-05-sbox-24"
  network       = module.vpc1.vpc_network_name
  subnets       = var.subnets_vpc1
}

module "subnets_vpc2" {
  source        = "./modules/network/subnet"
  project_id    = "dbg-safe-05-sbox-24"
  network       = module.vpc2.vpc_network_name
  subnets       = var.subnets_vpc2
}

module "subnets_vpc3" {
  source        = "./modules/network/subnet"
  project_id    = "dbg-safe-05-sbox-24"
  network       = module.vpc3.vpc_network_name
  subnets       = var.subnets_vpc3
}

module "subnets_vpc4" {
  source        = "./modules/network/subnet"
  project_id    = "dbg-safe-05-sbox-24"
  network       = module.vpc4.vpc_network_name
  subnets       = var.subnets_vpc4
}

module "subnets_vpc5" {
  source        = "./modules/network/subnet"
  project_id    = "dbg-safe-05-sbox-24"
  network       = module.vpc5.vpc_network_name
  subnets       = var.subnets_vpc5
}

# Create VPC Peering Connections
module "vpc_peering" {
  source        = "./modules/network/peering"
  project_id    = var.project_id
  peerings      = var.peerings
}
