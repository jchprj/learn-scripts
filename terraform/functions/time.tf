provider "time" {}
provider "external" {}

# https://developer.hashicorp.com/terraform/language/functions/formatdate
output "formatdate" {
  value = "${formatdate("DD MMM YYYY", "2018-01-02T23:12:01Z")}"
}

# https://developer.hashicorp.com/terraform/language/v1.1.x/functions/timeadd
output "timeadd" {
  value = "${formatdate("DD MMM YYYY hh:mm ZZZ", timeadd("2017-11-22T00:00:00Z", "10m"))}"
}

output "test" {
  value = "${formatdate("YYYY-M-D", timeadd("2021-02-22T00:00:00Z", "240h"))}"
}

locals {
  labels = {
    created          = time_static.activation_date.unix
    created_readable = formatdate("YYYY-MM-DD_hh-mm-ss", time_static.activation_date.rfc3339)
  }
}

resource "time_static" "activation_date" {}

output "created" {
  value = "${local.labels.created}"
}

output "created_readable" {
  value = "${local.labels.created_readable}"
}

data "external" "example" {
  program = ["python", "-c", "import datetime; print('{\"days\":\"' + str((datetime.datetime.now()-datetime.datetime(2021,2,22)).days) + '\"}')"]
}
output "external" {
  value = "${format("%sh", data.external.example.result.days)}"
}
