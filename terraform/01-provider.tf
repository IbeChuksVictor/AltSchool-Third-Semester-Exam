#----------------------------------------------------
#                     s3 Backend
#----------------------------------------------------

terraform {
  # namedotcom = {
  #   source  = "lexfrei/namedotcom"
  #   version = "~>1.0"
  # }

  backend "s3" {
    bucket         = "exam-state-altschool-03"
    key            = "cluster/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "Exam_State_Lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}

# provider "namedotcom" {
#   username = var.username
#   token    = var.token
# }
