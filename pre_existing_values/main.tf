terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
  }
}

resource "random_uuid" "random" {
  count = 5
}

resource "local_file" "foo" {
  content  = jsonencode(random_uuid.random[*].result)
  filename = "./random.json"
}