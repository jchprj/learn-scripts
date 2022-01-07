provider "local" {
}

variable "name_counts" {
  type    = map(number)
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
    expanded_names = flatten(values({
        # https://www.terraform.io/language/expressions/for
        # https://www.terraform.io/language/functions/range
        for name, count in var.name_counts : name => [
            for i in range(count) : format("temp_test_%s.%02d", name, i)
        ]
    }))
}

output "hello_world" {
    value = local.expanded_names
}

resource "local_file" "foo3" {
    # https://www.terraform.io/language/meta-arguments/for_each
    for_each    = toset(local.expanded_names)
    content     = "foo!"
    filename    = "${each.value}"
}

