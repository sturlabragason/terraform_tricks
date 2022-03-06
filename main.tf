locals {
  file_content = toset(jsondecode(file("./pre_existing_values/random.json")))
}

resource "null_resource" "out" {
  for_each = local.file_content
  provisioner "local-exec" {
    command = "Write-Host '${each.value}' "
    interpreter = ["pwsh", "-Command"]
  }
}