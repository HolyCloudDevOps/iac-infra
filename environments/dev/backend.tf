terraform {
  backend "s3" {
    bucket = "tf-backend-file-dev"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}