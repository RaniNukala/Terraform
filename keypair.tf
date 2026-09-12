resource "aws_key_pair" "app_key" {
  key_name   = "modular-free-keypair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQ..." # Replace with your SSH public key string
}
