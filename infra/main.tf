module "eks" {
    source = "./modules/eks"
    vpc_id = var.vpc_id
    private_subnet_id = var.private_subnet_id
    public_subnet_id  = var.public_subnet_id
    endpoint_public_access = var.endpoint_public_access
    public_access_cidrs    = var.public_access_cidrs
}

resource "aws_iam_user" "desafio" {
  name = "desafio_aquarela_kaique_v4"
}
