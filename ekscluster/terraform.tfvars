#----------------------------------------------------
#               Values of Variables
#----------------------------------------------------

project_name               = "EKS"
region                     = "us-east-1"
vpc_cidr_block             = "10.0.0.0/16"
public_subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
private_subnet_cidr_blocks = ["10.0.7.0/24", "10.0.8.0/24", "10.0.9.0/24", "10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
ami                        = "ami-09cd747c78a9add63"
ami_type                   = "AL2_x86_64"
instance_type              = "t3.large"
ec2_instance_type          = "t3.medium"
key_name                   = "jenkins-server"
key_path                   = "/home/ibechuks/Downloads/jenkins-server.pem"
jenkins_server_user        = "ec2-user"
source_file                = "./jenkins-server/jenkin-setup.sh"
destination_file           = "/tmp/jenkin-setup.sh"
cluster_name               = "EKS-cluster"
cluster_version            = "1.25"
domain-name                = "domain_name.com"
sub_domain_name            = "sub.domain_name.com"