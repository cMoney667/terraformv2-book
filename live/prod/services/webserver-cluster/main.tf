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

module "webserver_cluster" {
  source = "../../../../modules/services/webserver-cluster"

  cluster_name = "webservers-prod"
  instance_type = "t2.micro"
  min_size = 2
  max_size = 10
  enable_autoscaling = true
  db_remote_state_bucket = "cmoney-terraform-up-and-running-state"
  db_remote_state_key = "prod/data-stores/mysql/terraform.tfstate"

  custom_tags = {
    Owner = "team-foo"
    ManagedBy = "terraform"
  }
}
