provider "aws" {
        access_key = "AKIAYDH5SEQT2NR3YHNP"
        secret_key = "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"
        region = var.aws_region
}

resource "aws_s3_bucket" "my-s3-bucket" {
        bucket_prefix = var.bucket_prefix
        acl = var.acl

   versioning {
    enabled = var.versioning
  }

  tags = var.tags
}
