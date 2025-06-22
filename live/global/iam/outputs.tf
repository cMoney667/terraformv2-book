# output "first_arn" {
#   value = aws_iam_user.example[0].arn
#   description = "The ARN for the first user"
# }
output "all_arns" {
  value = values(module.users)[*].user_arn
  description = "The ARNs for all users"
}
output "all_users" {
  value = module.users
}