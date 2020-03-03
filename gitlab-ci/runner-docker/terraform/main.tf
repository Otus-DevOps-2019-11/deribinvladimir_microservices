terraform {
  # terraform version
  required_version = ">=0.12.0"
}

provider "google" {
  # provider version
  version = "~> 3.0"

  # Project ID
  project = var.project
  region  = var.region
}

provider "null" {
  version = "~> 2.1"
}

module "app" {
  source             = "./modules/app"
  public_key_path    = var.public_key_path
  zone               = var.zone
  app_disk_image     = var.app_disk_image
  instance_count     = 1
}

# don't need for runner as it not need external connections
#module "vpc" {
#  source = "./modules/vpc"
  # source_ranges = ["80.250.215.124/32"]
  # source_ranges = ["178.66.2.16/32"]
#}
