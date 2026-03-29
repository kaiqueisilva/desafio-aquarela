module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "eks-desafio"
  cluster_version = "1.29"

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      max_size     = 4
      min_size     = 2

      instance_types = ["t3.medium"]
    }
  }
  
  tags = {
    Name = "managed-by-terraform"
  }

}
