variable "region" {
    default = "us-east-1"

}

variable "vpc_id" {
    default = "vpc-03e89d05d2057a190"
}

variable "private_subnet_id" {
  default = private_subnet_ids[0]
  type = string
}

variable "public_subnet_id" {
  default = public_subnet_id[1]
  type = string
}


