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
}

output "test_var_in_module" {
  value = "${module.abc.origin}"
}