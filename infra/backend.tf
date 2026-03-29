terraform {
  backend "s3" {
    bucket         = "desafio-aquarela"
    key            = "desafio/terraform.tfstate"
    region         = var.region
    dynamodb_table = "terraform-lock"
  }
}