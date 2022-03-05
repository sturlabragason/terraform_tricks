data "local_file" "foo" {
    filename = "${path.module}/random_string.json"
}

output "content" {
  value = data.local_file.foo
}