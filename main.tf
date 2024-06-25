module "vpc_20" {
  source    = "./vpc"
  vpc_name  = "vpc-20"
  project_id = var.project1_id
  providers = {
    google = google.project1
  }
}

module "vpc_15" {
  source    = "./vpc"
  vpc_name  = "vpc-15"
  project_id = var.project1_id
  providers = {
    google = google.project1
  }
}

module "vpc_30" {
  source    = "./vpc"
  vpc_name  = "vpc-30"
  project_id = var.project2_id
  providers = {
    google = google.project2
  }
}

module "subnets_vpc_20" {
  source    = "./subnet"
  vpc       = module.vpc_20.network_self_link
  project_id = var.project1_id
  subnets   = var.vpc_20_subnets
  providers = {
    google = google.project1
  }
}

module "subnets_vpc_15" {
  source    = "./subnet"
  vpc       = module.vpc_15.network_self_link
  project_id = var.project1_id
  subnets   = var.vpc_15_subnets
  providers = {
    google = google.project1
  }
}

module "subnets_vpc_30" {
  source    = "./subnet"
  vpc       = module.vpc_30.network_self_link
  project_id = var.project2_id
  subnets   = var.vpc_30_subnets
  providers = {
    google = google.project2
  }
}

module "vpc_peering" {
  source    = "./vpc_peering"
  project_id = var.project1_id
  peerings  = var.vpc_peerings
  providers = {
    google = google.project1
  }
}
