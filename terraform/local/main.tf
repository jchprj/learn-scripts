# https://registry.terraform.io/providers/hashicorp/local/latest
provider "local" {
}

variable "filename" {
  default = "temp_test"
}

# https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
resource "local_file" "foo" {
    content     = "foo!"
    filename = "${var.filename}"
}