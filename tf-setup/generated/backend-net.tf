terraform {
  required_version = "~> 1.3.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #  Lock version to avoid unexpected problems
      version = "4.31.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.13.1"
    }
  }
  backend "s3" {
    bucket         = "tf-state-workshop-90576a7aa7479ec8"
    key            = "terraform/terraform_locks_net.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = "terraform_locks_net"
    encrypt        = "true"
  }
}
provider "aws" {
  region                   = var.region
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = var.profile
}
