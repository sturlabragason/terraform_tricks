output "content" {
  value = jsonedecode(file("./pre_existing_values/random_string.json"))
}