terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  # backend設定はCircleCIのbackend_configで指定
  backend "s3" {}
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-1"
}