module "vpc" {
    source = "./modules/vpc"

}

module "eks" {
    source = "./modules/eks"
    vpc_id = module.vpc.vpc_id
    subnet_ids = module.vpc.private_subnets
}

resource "aws_iam_user" "desafio" {
  name = "desafio_aquarela"
}