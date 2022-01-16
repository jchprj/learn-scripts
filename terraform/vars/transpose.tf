# https://www.terraform.io/language/functions/transpose

variable map_list {
    type = map(list(string))
    default = {"a" = ["1", "2"], "b" = ["2", "3"]}
}
locals {
  transpose_map  = transpose(var.map_list)
}

output "transpose_before" {
    value = var.map_list
}
output "transpose_after" {
    value = local.transpose_map
}