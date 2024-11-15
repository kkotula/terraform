resource "null_resource" "example1" {
  count = var.countt
  provisioner "local-exec" {
    command = "echo vlvllvlvlvl"
  }
}

variable "countt" {
  type = number
}
