# https://www.terraform.io/docs/configuration-0-11/outputs.html
# https://stackoverflow.com/questions/63589952/terraform-range-function-to-start-from-1-instead-of-0
# https://www.terraform.io/docs/language/expressions/splat.html
# https://www.terraform.io/docs/language/functions/concat.html

variable "listabc" {
  type = "list"

  default = [
    5,
    6,
    "s"
  ]
}

variable "node" {
  default = "node-%d"
}

output "a" {
  value = "a"
}

locals {
  list0 = ["${var.listabc[0]}"]
}

output "b" {
  value = "${local.list0}"
}


provider "null" {
  version = "2.1.2"
}

# https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource
# triggers: (Map of String) A map of arbitrary strings that, when changed, will force the null resource to be replaced, re-running any associated provisioners.
resource "null_resource" "aaa" {
  count = 3

  triggers = {
    "k"                 = "${format(var.node, count.index)}"
  }
}

output "out3" {
  # https://stackoverflow.com/questions/64134699/terraform-map-to-string-value
  value = "${join(",", null_resource.aaa.*.triggers.k)}"
}
