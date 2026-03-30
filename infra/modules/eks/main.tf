module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "eks-desafio-v2"
  cluster_version = "1.31"

  vpc_id     = var.vpc_id
  subnet_ids = [
    var.private_subnet_id,
    var.public_subnet_id
  ]

  cluster_endpoint_public_access       = var.endpoint_public_access
  cluster_endpoint_public_access_cidrs = var.public_access_cidrs

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      max_size     = 4
      min_size     = 2
      subnet_ids   = [
        var.private_subnet_id
      ]

      instance_types = ["t3.medium"]

    }
  }
  
  tags = {
    Name = "managed-by-terraform"
  }

}
