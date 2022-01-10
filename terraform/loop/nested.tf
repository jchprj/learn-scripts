provider "local" {
}

variable "name_counts" {
  type = map(number)
  default = {
    "01" = 1
    "02" = 3
    "03" = 2
    "04" = 4
  }
}

locals {
  # https://www.terraform.io/language/functions/flatten
  # https://www.terraform.io/language/functions/values
  names_map = {
    for name, count in var.name_counts : name => [
      for i in range(count) :
      {
        key   = format("%s", name),
        value = format("temp_test_%s.%02d", name, i)
      }
    ]
  }
  flatten_names_list = [for index, kv in flatten(values(local.names_map)) : kv.value]
  flatten_names_map  = { for index, kv in flatten(values(local.names_map)) : index => kv }
  keys_list          = flatten(keys(local.names_map))
}

output "names_map" {
  value = local.names_map
}

output "flatten_names_list" {
  value = local.flatten_names_list
}

output "flatten_names_map" {
  value = local.flatten_names_map
}

output "keys_list" {
  value = local.keys_list
}

resource "local_file" "foo3" {
  # https://www.terraform.io/language/meta-arguments/for_each
  # for_each    = local.flatten_names_map
  # https://stackoverflow.com/questions/63620298/terraform-how-to-use-conditional-if-in-for-each-into-map-object
  for_each = {
    for index, kv in local.flatten_names_map : index => kv
    if 1 > 0
  }
  content  = "foo!"
  filename = "${each.value.value}"
}

