module "eks" {
    source = "./modules/eks"
    vpc_id = var.vpc_id
    private_subnet_id = var.private_subnet_id
    public_subnet_id  = var.public_subnet_id
}

resource "aws_iam_user" "desafio" {
  name = "desafio_aquarela_kaique_v2"
}
