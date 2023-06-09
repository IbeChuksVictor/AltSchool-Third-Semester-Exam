#----------------------------------------------------
#                     EKS Cluster
#----------------------------------------------------

module "AltSchool-Exam-EKS" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.10.0"

  cluster_name                   = var.cluster_name
  cluster_version                = var.cluster_version
  cluster_endpoint_public_access = true

  subnet_ids  = module.AltSchool-Exam-EKS-vpc.public_subnets
  vpc_id      = module.AltSchool-Exam-EKS-vpc.vpc_id
  enable_irsa = true


  eks_managed_node_groups = {
    dev = {
      desired_capacity = 4
      max_capacity     = 5
      min_capacity     = 3

      instance_types = [var.instance_type]
    }
  }
  tags = {
    environment = "development"
  }
}
