terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
  }
}

resource "random_string" "random" {
  length           = 16
  special          = false
}

resource "local_file" "foo" {
    content     = jsonencode(random_string.random.result)
    filename = "./random_string.json"
}