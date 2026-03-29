module "eks" {
    source = "./modules/eks"
    vpc_id = var.vpc_id

    subnet_ids = [
        var.subnet_private,
        var.subnet_public
    ]
}

resource "aws_iam_user" "desafio" {
  name = "desafio_aquarela_kaique_v2"
}
