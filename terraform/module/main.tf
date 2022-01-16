# https://blog.gruntwork.io/how-to-create-reusable-infrastructure-with-terraform-modules-25526d65f73d
# https://www.terraform.io/docs/language/modules/develop/providers.html

variable "var1" {
  default = "I'm in the module"
}
output "origin" {
  value = "${var.var1}"
}


variable "map" {
  type = map

  default = {
    a = 2
    b = 3
  }
}

output "map" {
  value = "${var.map}"
}


variable "list" {
  type = list

  default = [
    "1",
    2
  ]
}

output "list" {
  value = "${var.list}"
}