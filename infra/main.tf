module "eks" {
    source = "./modules/eks"
    vpc_id = var.vpc_id
    private_subnet_ids = var.private_subnet_ids
    public_subnet_ids = var.public_subnet_ids
}

resource "aws_iam_user" "desafio" {
  name = "desafio_aquarela_kaique_v2"
}
