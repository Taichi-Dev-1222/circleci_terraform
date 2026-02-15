variable "ec2_public_key" {
  description = "EC2インスタンスにアクセスするためのSSH公開鍵"
  type        = string
  sensitive   = true
}

