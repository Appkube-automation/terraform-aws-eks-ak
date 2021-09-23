// ----------------------------------------------------------------------------
// Required Variables
// ----------------------------------------------------------------------------
variable "region" {
  description = "The region to create the resources into"
  type        = string
  default     = "us-east-1"
}

// ----------------------------------------------------------------------------
// VPC Variables
// ----------------------------------------------------------------------------
variable "vpc_name" {
  description = "The name of the VPC to be created for the cluster"
  type        = string
  default     = "tf-vpc-eks"
}

variable "public_subnets" {
  description = "The public subnet CIDR block to use in the created VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets" {
  description = "The private subnet CIDR block to use in the created VPC"
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "vpc_cidr_block" {
  description = "The vpc CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  type        = bool
  default     = false
}

variable "single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  type        = bool
  default     = false
}