terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {}

resource "null_resource" "local_demo" {
  provisioner "local-exec" {
    command = "echo 'This is a local/mock terraform path for AutoDeployX. No cloud resources created.'"
  }
}
