data "aws_vpc" "vpc-desafio-devops" {
    id = var.vpc_id
}

data "aws_subnet" "private" {
  id = var.private_subnet_ids[0]
}

data "aws_subnet" "public" {
  id = var.public_subnet_ids[1]
}
