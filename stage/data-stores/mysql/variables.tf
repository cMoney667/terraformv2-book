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