# https://registry.terraform.io/providers/hashicorp/local/latest
provider "local" {
}

variable "filename" {
  default = "temp_test"
}

# https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
resource "local_file" "foo1" {
  content  = "foo!"
  filename = "${var.filename}"
}


# https://www.terraform.io/docs/language/data-sources/index.html
# https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file
data "local_file" "foo" {
  filename = "local_file"
}

output "local_file_content" {
  value = "${data.local_file.foo.content}"
}
