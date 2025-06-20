terraform {
  backend "s3" {
    bucket = "cmoney-terraform-up-and-running-state"
    key = "stage/services/webserver-cluster/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
  }
}
provider "aws" {
  region = "us-east-2"
}