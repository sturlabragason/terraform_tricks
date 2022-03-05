locals {
  file_content = flatten([jsondecode(file("./pre_existing_values/random_string.json"))])
}

output "content" {
  value = local.file_content
}

resource "null_resource" "out" {
  for_each = toset(local.file_content)
  provisioner "local-exec" {
    command = "Write-Host '${each.value}' "
    interpreter = ["pwsh", "-Command"]
  }
}