terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
  }
}

resource "random_string" "random" {
  count   = 5
  length  = 16
  special = false
}

resource "local_file" "foo" {
  content  =  jsondecode(random_string.random[*].result)
  filename = "./random_string.json"
}