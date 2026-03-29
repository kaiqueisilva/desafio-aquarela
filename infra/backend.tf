terraform {
  backend "s3" {
    bucket         = "desafio-aquarela"
    key            = "desafio/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-lock"
  }
}