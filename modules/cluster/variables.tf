variable "region" {
  description = "The region to create the resources into"
  type        = string
  default     = "us-east-1"
}
# VPC
variable "vpc_name" {
  type    = string
  default = "tf-vpc-eks"
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "enable_nat_gateway" {
  type    = bool
  default = false
}

variable "single_nat_gateway" {
  type    = bool
  default = false
}
