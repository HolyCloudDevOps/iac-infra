provider "aws" {
  region = "ca-central-1"
}

module "network" {
  source = "../modules/aws-network"

  name                = "vpc-${terraform.workspace}"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  azs                 = var.azs
  create_igw          = var.create_igw
  tags = {
    Project = "Portfolio-project-${terraform.workspace}"
  }
}