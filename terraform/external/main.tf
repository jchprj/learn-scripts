# https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/data_source

data "external" "example" {
  program = ["echo", "{\"a\":\"123\"}"]
}

output "result" {
    value = "${data.external.example.result}"
}

output "result2" {
    value = "${data.external.example.result["a"]}"
}