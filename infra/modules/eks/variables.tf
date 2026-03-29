variable "vpc_id" {
    default = ""
}


variable "private_subnet_id" {
  default = private_subnet_ids[0]
  type = string
}

variable "public_subnet_id" {
  default = public_subnet_id[1]
  type = string
}