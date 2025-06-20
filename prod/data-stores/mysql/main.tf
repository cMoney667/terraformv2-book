terraform {
  backend "s3" {
    bucket = "cmoney-terraform-up-and-running-state"
    key = "prod/data-stores/mysql/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
  }
}
provider "aws" {
  region = "us-east-2"
}
module "database_instance" {
  source = "../../../modules/data-stores/mysql"

  instance_class = "db.t3.micro"
  db_name = "prod_database"

  db_password = var.db_password
  db_username = var.db_username
}