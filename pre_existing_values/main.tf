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
  count    = length(random_string.random.result)
  content  = random_string.random.result[count.index]
  filename = "./random_string.json"
}