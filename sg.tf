resource "aws_security_group" "terra_SG" {
  vpc_id = aws_vpc.ec2_vpc.id
  name   = var.security_group_info.tags

  ingress {
    description      = "SG from Terraform"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }

  ingress {
    description      = "SG from Terraform"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }

  tags = {
    Name = "var.security_group_info.tags"
  }

  depends_on = [ aws_vpc.ec2_vpc ]
}
