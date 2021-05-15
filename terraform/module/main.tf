# https://blog.gruntwork.io/how-to-create-reusable-infrastructure-with-terraform-modules-25526d65f73d

variable "var1" {
  default = "I'm in the module"
}
output "origin" {
  value = "${var.var1}"
}