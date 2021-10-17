# https://www.terraform.io/docs/configuration-0-11/outputs.html
# https://stackoverflow.com/questions/63589952/terraform-range-function-to-start-from-1-instead-of-0
# https://www.terraform.io/docs/language/expressions/splat.html

variable "list" {
  type = "list"

  default = [
    5,
    6,
    "s"
  ]
}

# https://discuss.hashicorp.com/t/working-with-list-of-maps/3675
variable "images" {
  type = set(object({
      name = string
  }))
  default = [
    {
    "name" = "image-1234"
    },
    {
    "name" = "image-4567"
    }
  ]
}
variable "nodes" {
  default = 5
}

output "a" {
  value = "a"
}

locals {
  # Not work if < 0.12 with error: At 17:17: unexpected token while parsing list: IDENT
  node_range = [for s in var.list : upper(s)]
  node_range2 = range(1, var.nodes + 1)
  node_range3 = ["${var.images[*].name}"]
  # or https://www.terraform.io/docs/configuration-0-11/interpolation.html
  node_range4 = ["${var.images.*.name}"]
}


output "out" {
  value = local.node_range
}

output "out2" {
  value = local.node_range2
}

output "out3" {
  value = local.node_range3
}

output "out4" {
  value = local.node_range4
}
