terraform {
  backend "s3" {}
}

data "terraform_remote_state" "main" {
  backend = "s3"
  config = {
    bucket  = "tfstate-bucket-vpc-202506"
    key     = "vpc/terraform.tfstate"
    region  = "ap-northeast-1"
    encrypt = true
  }
}