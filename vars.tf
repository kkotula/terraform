resource "null_resource" "example-2" {
  provisioner "local-exec" {
    command = "echo This command will execute whenever the configuration changes"
  }
}
