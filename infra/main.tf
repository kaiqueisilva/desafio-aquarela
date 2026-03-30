module "eks" {
    source = "./modules/eks"
    vpc_id = var.vpc_id
    private_subnet_id = var.private_subnet_id
    public_subnet_id  = var.public_subnet_id
    endpoint_public_access = var.endpoint_public_access
    public_access_cidrs    = var.public_access_cidrs
    eks_admin_arn = module.iam_user_name.user_arn
    iam_user_name = module.iam_user_name.user_name
    region        = var.region
}

module "iam_user_name" {
  source = "./modules/iam"

  
  
}
