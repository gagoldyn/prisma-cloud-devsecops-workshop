provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "25dd4624-fb52-4d50-843e-231934e1f912"
    git_commit           = "e892baf7663cbc9375ec6439403621624d6ce83e"
    git_file             = "code/build/s3v2.tf"
    git_last_modified_at = "2024-11-13 20:10:44"
    git_last_modified_by = "131210866+gagoldyn@users.noreply.github.com"
    git_modifiers        = "131210866+gagoldyn"
    git_org              = "gagoldyn"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
