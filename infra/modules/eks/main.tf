module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "eks-desafio-kaique-v2"
  cluster_version = "1.35"

  vpc_id     = var.vpc_id
  subnet_ids = [
    var.private_subnet_ids[0],
    var.private_subnet_ids[1],
    var.public_subnet_ids[0],
    var.public_subnet_ids[1]

  ]

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      max_size     = 4
      min_size     = 2
      subnet_ids   = [
        var.private_subnet_ids[0],
        var.private_subnet_ids[1]
      ]

      instance_types = ["t3.medium"]

    }
  }
  
  tags = {
    Name = "managed-by-terraform"
  }

}
