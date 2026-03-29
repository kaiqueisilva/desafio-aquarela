module "eks" {
    source = "./modules/eks"
    vpc_id = var.vpc_id
    private_subnet_id = data.aws_subnet.private.id
    public_subnet_id = data.aws_subnet.public.id
}

resource "aws_iam_user" "desafio" {
  name = "desafio_aquarela_kaique_v2"
}
