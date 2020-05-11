terraform {
  backend "s3" {
    bucket = "hayfa-tf-bucket"
    key    = "dev/devmachineState"
    region = "eu-west-1"
  }
}
