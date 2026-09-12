#-----------------------------------
# Extra Block Storage Volume (10 GB)
#-----------------------------------
resource "aws_ebs_volume" "app_storage" {
  availability_zone = "${var.aws_region}a"
  size              = 10
  type              = "gp3"
  tags              = { Name = "app-data-ebs" }
}

#-------------------------------------------------------------
# Link block storage to our private application computing node
#-------------------------------------------------------------
resource "aws_volume_attachment" "ebs_attachment" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.app_storage.id
  instance_id = aws_instance.private_app.id
}
