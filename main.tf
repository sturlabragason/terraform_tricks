data "local_file" "foo" {
    filename = "${path.module}/pre_existing_values/random_string.json"
}

output "content" {
  value = data.local_file.foo
}