locals {
  file_content = flatten([jsondecode(file("./pre_existing_values/random_string.json"))])
}

output "content" {
  value = local.file_content
}