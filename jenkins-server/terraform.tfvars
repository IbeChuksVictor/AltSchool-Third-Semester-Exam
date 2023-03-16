#----------------------------------------------------
#               Values of Variables
#----------------------------------------------------

region                     = "us-east-1"
ami                        = "ami-09cd747c78a9add63"
ami_type                   = "AL2_x86_64"
instance_type              = "t3.large"
ec2_instance_type          = "t3.medium"
key_name                   = "jenkins-server"
key_path                   = "/home/ibechuks/Downloads/jenkins-server.pem"
jenkins_server_user        = "ec2-user"
source_file                = "./jenkins-server/jenkin-setup.sh"
destination_file           = "/tmp/jenkin-setup.sh"