
# https://stackoverflow.com/questions/47708338/how-to-give-a-tf-file-as-input-in-terraform-apply-command
# terraform plan -target local_file.foo2

variable "filename" {
  default = "temp_test"
}

resource "local_file" "foo2" {
  # https://www.terraform.io/docs/language/meta-arguments/count.html
  count       = 5
  content     = "foo!"
  filename    = "${var.filename}.${count.index / 2}"
}

