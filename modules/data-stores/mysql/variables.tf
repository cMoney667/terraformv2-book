variable "db_username" {
  description = "The username for the database"
  type = string
  sensitive = true
}
variable "db_password" {
  description = "The password of the database"
  type = string
  sensitive = true
}

variable "instance_class" {
  description = "The type of DB Instances to run (e.g. db.t3.micro)"
  type = string
}
variable "db_name" {
  description = "The name for the database"
  type = string
}