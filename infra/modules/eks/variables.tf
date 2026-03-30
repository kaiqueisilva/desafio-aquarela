variable "vpc_id" {
  type = string
}

variable "private_subnet_id" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "endpoint_public_access" {
  type        = bool
  default     = true
}

variable "public_access_cidrs" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
