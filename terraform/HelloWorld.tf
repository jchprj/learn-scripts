# https://github.com/gruntwork-io/terratest/tree/master/examples/terraform-hello-world-example

terraform {
  required_version = ">= 0.10.0"
}

# website::tag::1:: The simplest possible Terraform module: it just outputs "Hello, World!"
output "hello_world" {
  value = "Hello, World!"
}