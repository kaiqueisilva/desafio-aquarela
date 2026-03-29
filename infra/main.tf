module "eks" {
    source = "./modules/eks"
}

resource "aws_iam_user" "desafio" {
  name = "desafio_aquarela"
}