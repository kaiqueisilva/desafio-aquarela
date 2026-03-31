module "ebs_csi_irsa_role" {
  source = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  version = "~> 5.39"

  role_name             = "ebs-csi-role-eks-desafio"
  attach_ebs_csi_policy = true

  oidc_providers = {
    main = {
      provider_arn               = module.eks.oidc_provider_arn
      namespace_service_accounts = ["kube-system:ebs-csi-controller-sa"]
    }
  }
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "eks-desafio-v0"
  cluster_version = "1.31"

  vpc_id     = var.vpc_id
  subnet_ids = [
    var.private_subnet_id,
    var.public_subnet_id
  ]

  cluster_endpoint_public_access       = var.endpoint_public_access
  cluster_endpoint_public_access_cidrs = var.public_access_cidrs

  cluster_addons = {}
  
  manage_aws_auth_configmap = true

  # Desativando recursos que estão gerando 403 (opcionais para o desafio)
  create_kms_key              = false
  cluster_encryption_config   = {}
  cluster_enabled_log_types   = []
  
  aws_auth_users = [
      {
        userarn  = var.eks_admin_arn
        username = var.iam_user_name
        groups   = ["system:masters"]
      }
    ]


  eks_managed_node_groups = {
    default = {
      desired_size = 2
      max_size     = 4
      min_size     = 2
      subnet_ids   = [
        var.private_subnet_id
      ]

      instance_types = ["t3.xlarge"]

    }
  }
  
  tags = {
    Name = "managed-by-terraform"
  }

}

resource "aws_eks_addon" "ebs_csi" {
  cluster_name             = module.eks.cluster_name
  addon_name               = "aws-ebs-csi-driver"
  service_account_role_arn = module.ebs_csi_irsa_role.iam_role_arn
  depends_on               = [module.eks]
}
