module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "crs-eks"
  cluster_version = "1.30"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  cluster_endpoint_public_access = true
  enable_irsa                    = true

  eks_managed_node_groups = {
    default = {
      ami_type       = "AL2_ARM_64"
      instance_types = ["t4g.medium"]
      desired_size   = 2
      min_size       = 1
      max_size       = 3
      labels         = { role = "general" }
    }
  }
}
