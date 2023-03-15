#--------------------------------------------------------------
#                           Variables
#--------------------------------------------------------------

variable "region" {}
variable "project_name" {}
variable "vpc_cidr_block" {}
variable "public_subnet_cidr_blocks" {}
variable "private_subnet_cidr_blocks" {}
variable "ami" {}
variable "ami_type" {}
variable "instance_type" {}
variable "ec2_instance_type" {}
variable "key_name" {}
variable "key_path" {}
variable "jenkins_server_user" {}
variable "source_file" {}
variable "destination_file" {}
variable "cluster_name" {}
variable "cluster_version" {}
variable "domain-name" {}
variable "sub_domain_name" {}
# variable "token" {}
# variable "username" {}  