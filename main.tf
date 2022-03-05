data "local_file" "foo" {
    filename = "./pre_existing_values/random_string.json"
}

output "content" {
  value = data.local_file.foo.content
}