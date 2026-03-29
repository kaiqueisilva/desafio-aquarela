variable "vpc_id" {
    default = ""
}


variable "private_subnet_id" {
  type = list(string)
}

variable "public_subnet_id" {
  type = list(string)
}