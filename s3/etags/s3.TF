resource "aws_s3_bucket" "default" {

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}