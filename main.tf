
resource "random_string" "suffix" {
  length  = 8
  special = false
}

resource "random_pet" "current" {
  prefix    = "tf-jx"
  separator = "-"
  keepers = {
    # Keep the name consistent on executions
    cluster_name = var.cluster_name
  }
}

data "aws_caller_identity" "current" {}

// ----------------------------------------------------------------------------
// Setup all required AWS resources as well as the EKS cluster and any k8s resources
// See https://www.terraform.io/docs/providers/aws/r/vpc.html
// See https://www.terraform.io/docs/providers/aws/r/eks_cluster.html
// ----------------------------------------------------------------------------
module "cluster" {
  source                                = "./modules/cluster"
  region                                = var.region
  vpc_name                              = var.vpc_name
  public_subnets                        = var.public_subnets
  private_subnets                       = var.private_subnets
  vpc_cidr_block                        = var.vpc_cidr_block
  enable_nat_gateway                    = var.enable_nat_gateway
  single_nat_gateway                    = var.single_nat_gateway
}
