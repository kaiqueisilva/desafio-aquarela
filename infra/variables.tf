variable "region" {
    default = "us-east-1"

}

variable "vpc_id" {
    type = string
}

variable "private_subnet_id" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "public_access_cidrs" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "endpoint_public_access" {
  type        = bool
  default     = true
}

variable "iam_user_name"{
  default = "desafio-aquarela-user"
}

