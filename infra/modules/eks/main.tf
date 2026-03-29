module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "eks-desafio-kaique-v2"
  cluster_version = "1.35"

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      max_size     = 4
      min_size     = 2

      instance_types = ["t3.medium"]
      subnet_ids = [
        data.aws_subnet.private.id,
        data.aws_subnet.public.id
      ]
    }
  }
  
  tags = {
    Name = "managed-by-terraform"
  }

}
