terraform {
  backend "s3" {
    bucket = "desafio-aquarela-devops"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}