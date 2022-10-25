terraform {
  required_version = "~> 1.3.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #  Allow any 3.22+  version of the AWS provider
      #version = "~> 3.22"
      version = "= 4.31.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
    external = {
      source  = "hashicorp/external"
      version = "~> 2.0"
    }

  }
}

provider "aws" {
  region                   = var.region
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "default"
}
provider "null" {}
provider "external" {}

variable "region" {
  description = "The name of the AWS Region"
  type        = string
  default     = "ap-northeast-2"
}



