output "content" {
  value = jsondecode(file("./pre_existing_values/random_string.json"))
}