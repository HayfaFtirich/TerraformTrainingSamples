terraform {
  backend "s3" {
    bucket = "hayfa-tf-bucket"
    key    = "prod/prodmachineState"
    region = "eu-west-1"
  }
}
