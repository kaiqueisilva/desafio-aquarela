data "aws_vpc" "vpc-desafio-devops" {
    id = var.vpc_id
}

data "aws_subnet" "private" {
    id = var.subnet_private
}

data "aws_subnet" "public" {
    id = var.subnet_public
}
