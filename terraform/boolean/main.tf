# https://www.terraform.io/docs/configuration-0-11/variables.html#booleans
variable "var1" { default = true }
variable "var2" { default = "true" }
variable "var3" { default = false }
variable "var4" { default = "false" }
output "test_1_var1" {
  value = "${var.var1}"                       # In Terraform before 0.12.0, this will be 1
}
output "test_2_var3" {
  value = "${var.var3}"                       # In Terraform before 0.12.0, this will be 0
}
output "test_3_var1" {
  value = "${var.var1 ? "a" : "b"}"
}
output "test_4_var2" {
  value = "${var.var2 ? "a" : "b"}"
}
output "test_5_var3" {
  value = "${var.var3 ? "a" : "b"}"
}
output "test_6_var4" {
  value = "${var.var4 ? "a" : "b"}"
}
output "test_7_var1_true" {
  value = "${var.var1 == true}"               # In Terraform before 0.12.0, this will be false
}
output "test_8_var1_quotes_true" {
  value = "${var.var1 == "true"}"             # In Terraform before 0.12.0, this will be false
}
output "test_9_var1_number" {
  value = "${var.var1 == 1}"                  # In Terraform before 0.12.0, this will be true
}