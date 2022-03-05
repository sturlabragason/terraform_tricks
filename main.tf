locals {
  file_content = flatten([jsondecode(file("./pre_existing_values/random_string.json"))])
}

output "content" {
  value = local.file_content
}

resource "null_resource" "example2" {
  for_each = local.file_content
  provisioner "local-exec" {
    command = "Write-Host '${each.value}' "
    interpreter = ["pwsh", "-Command"]
  }
}