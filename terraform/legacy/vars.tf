

variable "map" {
  type = "map"

  default {
    a = 1
    b = 2
  }
}

output "test_map" {
  value = "${map}"
}

variable "list" {
  type = "list"

  default = [
    5,
    6
  ]
}

output "test_list" {
  value = "${list}"
}