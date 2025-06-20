variable "server_port" {
  description = "The default port the server should listen on"
  type        = number
  default     = 8080
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type = string
}
variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type = string
}
variable "db_remote_state_key" {
  description = "The path for the database's remote state is S3"
  type = string
}