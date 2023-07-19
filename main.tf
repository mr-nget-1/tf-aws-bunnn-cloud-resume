#tfsec:ignore:aws-s3-enable-versioning tfsec:ignore:aws-s3-encryption-customer-key

resource "aws_s3_bucket" "cloud-resume-site-bucket" {
  bucket = "tf-aws-mr-nget-1-cloud-resume"
  #logging {
  #      target_bucket = "<target-bucket>"
  #  }

  server_side_encryption_configuration {
    rule {
      #encrypt/decrypts whole bucket at one time; saves cost.
      bucket_key_enabled = true

      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_public_access_block" "cloud-resume-site-bucket" {
  bucket = aws_s3_bucket.cloud-resume-site-bucket.id
  block_public_acls = true
  block_public_policy = true 
  ignore_public_acls = true
  restrict_public_buckets = true
}
