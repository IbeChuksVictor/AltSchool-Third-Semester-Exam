#----------------------------------------------------
#               Values of Variables
#----------------------------------------------------

project_name               = "AltSchool-Exam-EKS"
region                     = "us-east-1"
vpc_cidr_block             = "10.0.0.0/16"
public_subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.3.0/24", "10.0.5.0/24"]
private_subnet_cidr_blocks = ["10.0.2.0/24", "10.0.4.0/24", "10.0.6.0/24"]
ami_type                   = "AL2_x86_64"
instance_type              = "t3.medium"
ec2_instance_type          = "t3.medium"
cluster_name               = "Altschool-EKS-cluster"
cluster_version            = "1.25"
domain-name                = "domain_name.com"
sub_domain_name            = "sub.domain_name.com"