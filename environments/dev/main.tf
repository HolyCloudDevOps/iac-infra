provider "aws" {
  region = "ca-central-1"
}

module "network" {
  source = "../../modules/aws-network"

  name                = var.name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  azs                 = var.azs
  create_igw          = var.create_igw
  tags                = var.tags
}