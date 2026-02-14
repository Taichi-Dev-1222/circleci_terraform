# 既存S3バケットのインポート
import {
  to = aws_s3_bucket.remote_backend
  id = "tfstate-bucket-vpc-202506"
}

# S3バケット作成
resource "aws_s3_bucket" "remote_backend" {
  bucket = "tfstate-bucket-vpc-202506"
  lifecycle {
    prevent_destroy = false
  }

  tags = {
    Name        = "remote-backend-s3"
  }
}

# 既存バージョニング設定のインポート
import {
  to = aws_s3_bucket_versioning.remote_backend
  id = "tfstate-bucket-vpc-202506"
}

# バージョニングの設定
resource "aws_s3_bucket_versioning" "remote_backend" {
  bucket = aws_s3_bucket.remote_backend.id
  versioning_configuration {
    status = "Enabled"
  }
}