resource "aws_s3_bucket" "b" {
  bucket = "tf-aws-mr-nget-1-cloud-resume"
  acl    = "private"
}