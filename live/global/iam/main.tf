provider "aws" {
  region = "us-east-2"
}

module "users" {
  source = "../../../modules/landing-zone/iam-user"

  for_each = toset(var.user_names)
  user_name = each.value
  # give_neo_cloudwatch_full_access = false
}

variable "hero_thousand_faces" {
  description = "map"
  type        = map(string)
  default = {
    neo      = "hero"
    trinity  = "love interest"
    morpheus = "mentor"
  }
}
output "upper_roles" {
  value = {for name, role in var.hero_thousand_faces : upper(name) => upper(role)}
}
output "upper_names" {
  value = [for name in var.user_names : upper(name)]
}
output "short_upper_names" {
  value = [for name in var.user_names : upper(name) if length(name) < 5]
}
output "for_directive" {
  value = "%{ for i, name in var.user_names }(${i}) ${name}, %{ endfor }"
}
output "for_directive_index_if_else_strip" {
  value = <<EOF
  %{~ for i, name in var.user_names ~}
  ${name}%{if i < length(var.user_names) - 1}, %{ else }.%{ endif }
  %{~ endfor ~}
  EOF
}