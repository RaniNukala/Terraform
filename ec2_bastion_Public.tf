resource "aws_instance" "bastion" {
  ami                    = "ami-0c55b159cbfafe1f0" # Ubuntu 20.04 LTS Free Tier
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = aws_key_pair.app_key.key_name
  tags                   = { Name = "bastion-host" }
}
