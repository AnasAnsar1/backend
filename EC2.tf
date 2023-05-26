resource "aws_instance" "terra_EC2" {
  ami                         = local.ami

  associate_public_ip_address = "true"

  availability_zone           = local.EC2_az

  instance_type               = local.instance_type

  subnet_id                   = local.EC2_subnet_id

  tenancy                     = local.EC2_tenancy

  user_data                   = local.user_data_path

  user_data_replace_on_change = "true"

  vpc_security_group_ids      = [aws_security_group.terra_SG.id]

  depends_on                  = [ aws_vpc.ec2_vpc, aws_security_group.terra_SG ]

  tags                        = {
    Name = "var.EC2_info.tags"
  }

}