# https://www.terraform.io/docs/language/values/variables.html
# https://dev.to/drewmullen/terraform-use-a-variable-s-value-to-define-another-variable-25o


# terraform apply
# terraform apply -var "var1=abc"
# terraform apply -var-file=test.tfvars


variable "var1" {
  default = "abcdefg"
}

locals  {
  var2 = "${var.var1 == "abc" ? "a" : "b"}"
}

output "test_var1" {
  value = "${var.var1}"
}

output "test_var2" {
  value = "${local.var2}"
}

module "abc" {
  source = "../module"
  map = "${var.map}"                  # Change the value of a map inside module by providing a variable defined in this app
  list = "${var.list}"
}

output "test_var_in_module" {
  value = "${module.abc.origin}"
}


variable "map" {
  type = "map"

  default {
    a = 1
    b = 2
  }
}

output "test_map" {
  value = "${module.abc.map}"
}

variable "list" {
  type = "list"

  default = [
    5,
    6
  ]
}

output "test_list" {
  value = "${module.abc.list}"
}
