resource "aws_s3_bucket" "bucket-storage" {
    bucket = "hayfa-tf-bucket"
    acl = "private"
    tags = {
      Name = "hayfa-tf-bucket"
      Environment = "Dev"
      Owner = "HayfaFtirich"
    }
}
