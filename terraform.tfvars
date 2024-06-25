project1_id = "dbg-safe-01-sbox-b2-423521"
project2_id = "dbg-safe-03-sbox-a4-423521"

vpc_20_subnets = [
  { name = "public-subnet-europe-west3", cidr = "10.0.1.0/24", region = "europe-west3" },
  { name = "external-subnet-europe-west3", cidr = "10.0.2.0/24", region = "europe-west3" },
  { name = "private-subnet-europe-west3", cidr = "10.0.3.0/24", region = "europe-west3" },
  { name = "reserve-subnet-europe-west3", cidr = "10.0.4.0/24", region = "europe-west3" },
  { name = "public-subnet-europe-west8", cidr = "10.1.1.0/24", region = "europe-west8" },
  { name = "external-subnet-europe-west8", cidr = "10.1.2.0/24", region = "europe-west8" },
  { name = "private-subnet-europe-west8", cidr = "10.1.3.0/24", region = "europe-west8" },
  { name = "reserve-subnet-europe-west8", cidr = "10.1.4.0/24", region = "europe-west8" }
]

vpc_15_subnets = [
  { name = "public-subnet-europe-west3", cidr = "10.2.1.0/24", region = "europe-west3" },
  { name = "public-subnet-europe-west8", cidr = "10.2.2.0/24", region = "europe-west8" }
]

vpc_30_subnets = [
  { name = "private-subnet-europe-west3", cidr = "10.3.1.0/24", region = "europe-west3" },
  { name = "private-subnet-europe-west8", cidr = "10.3.2.0/24", region = "europe-west8" }
]

vpc_peerings = [
  { name = "peering-vpc20-vpc15", network = "projects/dbg-safe-01-sbox-b2-423521/global/networks/vpc-20", peer_network = "projects/dbg-safe-01-sbox-b2-423521/global/networks/vpc-15" },
  { name = "peering-vpc20-vpc30", network = "projects/dbg-safe-01-sbox-b2-423521/global/networks/vpc-20", peer_network = "projects/dbg-safe-03-sbox-a4-423521/global/networks/vpc-30" }
]
