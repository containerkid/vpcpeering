credentials = "C:\\Users\\pkg02\\OneDrive\\Desktop\\keys\\dbg-safe-04-sbox-2a.json"
project_id  = "dbg-safe-04-sbox-2a-427622"
region      = "europe-west3"

subnets_vpc10 = [
  { name = "vpc10-ws8-pub", cidr = "10.4.96.0/26", region = "europe-west8" },
  { name = "vpc10-ws8-prv", cidr = "10.4.96.64/26", region = "europe-west8" },
  { name = "vpc10-ws8-ext", cidr = "10.4.96.128/26", region = "europe-west8" },
  { name = "vpc10-ws8-rsv", cidr = "10.4.96.192/26", region = "europe-west8" },
  { name = "vpc10-ws3-pub", cidr = "10.4.64.0/26", region = "europe-west3" },
  { name = "vpc10-ws3-prv", cidr = "10.4.64.64/26", region = "europe-west3" },
  { name = "vpc10-ws3-ext", cidr = "10.4.64.128/26", region = "europe-west3" },
  { name = "vpc10-ws3-rsv", cidr = "10.4.64.192/26", region = "europe-west3" }
]

subnets_vpc11 = [
  { name = "vpc11-ws3-s1", cidr = "10.4.80.0/25", region = "europe-west3" },
  { name = "vpc11-ws3-s2", cidr = "10.4.80.128/25", region = "europe-west3" },
  { name = "vpc11-ws8-s1", cidr = "10.4.110.0/25", region = "europe-west8" },
  { name = "vpc11-ws8-s2", cidr = "10.4.110.128/25", region = "europe-west8" }
]

subnets_vpc1 = [
  { name = "vpc1-ws3-s1", cidr = "10.4.65.0/25", region = "europe-west3" },
  { name = "vpc1-ws3-s2", cidr = "10.4.65.128/25", region = "europe-west3" },
  { name = "vpc1-ws8-s1", cidr = "10.4.97.0/25", region = "europe-west8" },
  { name = "vpc1-ws8-s2", cidr = "10.4.97.128/25", region = "europe-west8" }
]

subnets_vpc2 = [
  { name = "vpc2-ws3-s1", cidr = "10.4.66.0/25", region = "europe-west3" },
  { name = "vpc2-ws3-s2", cidr = "10.4.66.128/25", region = "europe-west3" },
  { name = "vpc2-ws8-s1", cidr = "10.4.98.0/25", region = "europe-west8" },
  { name = "vpc2-ws8-s2", cidr = "10.4.98.128/25", region = "europe-west8" }
]

subnets_vpc3 = [
  { name = "vpc3-ws3-s1", cidr = "10.4.67.0/25", region = "europe-west3" },
  { name = "vpc3-ws3-s2", cidr = "10.4.67.128/25", region = "europe-west3" },
  { name = "vpc3-ws8-s1", cidr = "10.4.99.0/25", region = "europe-west8" },
  { name = "vpc3-ws8-s2", cidr = "10.4.99.128/25", region = "europe-west8" }
]

subnets_vpc4 = [
  { name = "vpc4-ws3-s1", cidr = "10.4.68.0/25", region = "europe-west3" },
  { name = "vpc4-ws3-s2", cidr = "10.4.68.128/25", region = "europe-west3" },
  { name = "vpc4-ws8-s1", cidr = "10.4.100.0/25", region = "europe-west8" },
  { name = "vpc4-ws8-s2", cidr = "10.4.100.128/25", region = "europe-west8" }
]

subnets_vpc5 = [
  { name = "vpc5-ws3-s1", cidr = "10.4.69.0/25", region = "europe-west3" },
  { name = "vpc5-ws3-s2", cidr = "10.4.69.128/25", region = "europe-west3" },
  { name = "vpc5-ws8-s1", cidr = "10.4.101.0/25", region = "europe-west8" },
  { name = "vpc5-ws8-s2", cidr = "10.4.101.128/25", region = "europe-west8" }
]

peerings = [
  { name = "vpc10-vpc11", network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01", peer_network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc11-dbg-safe-05-sbox-24" },
  { name = "vpc10-vpc1", network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01", peer_network = "projects/dbg-safe-05-sbox-24/global/networks/vpc1-dbg-safe-05-sbox-24" },
  { name = "vpc10-vpc2", network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01", peer_network = "projects/dbg-safe-05-sbox-24/global/networks/vpc2-dbg-safe-05-sbox-24" },
  { name = "vpc10-vpc3", network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01", peer_network = "projects/dbg-safe-05-sbox-24/global/networks/vpc3-dbg-safe-05-sbox-24" },
  { name = "vpc10-vpc4", network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01", peer_network = "projects/dbg-safe-05-sbox-24/global/networks/vpc4-dbg-safe-05-sbox-24" },
  { name = "vpc10-vpc5", network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01", peer_network = "projects/dbg-safe-05-sbox-24/global/networks/vpc5-dbg-safe-05-sbox-24" },
  { name = "vpc11-vpc10", network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc11-dbg-safe-05-sbox-24", peer_network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01" },
  { name = "vpc1-vpc10", network = "projects/dbg-safe-05-sbox-24/global/networks/vpc1-dbg-safe-05-sbox-24", peer_network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01" },
  { name = "vpc2-vpc10", network = "projects/dbg-safe-05-sbox-24/global/networks/vpc2-dbg-safe-05-sbox-24", peer_network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01" },
  { name = "vpc3-vpc10", network = "projects/dbg-safe-05-sbox-24/global/networks/vpc3-dbg-safe-05-sbox-24", peer_network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01" },
  { name = "vpc4-vpc10", network = "projects/dbg-safe-05-sbox-24/global/networks/vpc4-dbg-safe-05-sbox-24", peer_network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01" },
  { name = "vpc5-vpc10", network = "projects/dbg-safe-05-sbox-24/global/networks/vpc5-dbg-safe-05-sbox-24", peer_network = "projects/dbg-safe-04-sbox-2a/global/networks/vpc10-dbg-safe-01" }
]