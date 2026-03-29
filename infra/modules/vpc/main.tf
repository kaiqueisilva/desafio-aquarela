module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "aquarela-vpc"
  cidr = var.vpc_cidr

  private_subnets = var.private_subnet_cidr
  public_subnets  = var.public_subnet_cidr

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Name: "managed-by-terraform"
  }
}