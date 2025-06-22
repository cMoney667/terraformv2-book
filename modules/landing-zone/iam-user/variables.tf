# variable "user_names" {
#   description = "Create IAM users with these names"
#   type = list(string)
#   default = ["neo", "trinity", "morpheus"]
# }
variable "user_name" {
  description = "The user name to use"
  type = string
}
variable "give_neo_cloudwatch_full_access" {
  description = "If true, neo gets full access to Cloudwatch"
  type = bool
}