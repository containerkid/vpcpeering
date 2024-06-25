provider "google" {
  alias       = "project1"
  credentials = file("C:/Users/pkg02/Downloads/terraform/dbg-safe-01-sbox.json")
  project     = "dbg-safe-01-sbox-b2-423521"
  region      = "europe-west3"
}

provider "google" {
  alias       = "project2"
  credentials = file("C:/Users/pkg02/Downloads/terraform/dbg-safe-03-sbox.json")
  project     = "dbg-safe-03-sbox-a4-423521"
  region      = "europe-west3"
}
