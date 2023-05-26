region = "ap-south-1"

vpc_info = {
  cidr_block = "10.0.0.0/16"
  tags       = "terra_ec2_vpc"
  instance_tenancy = "default"
  enable_dns_support = "true"
}

Public_Subnet_info = {
  tags = ["terra_ec2_Public_subnet_1"]
}

Private_Subnet_info = {
  tags = ["terra_ec2_Private_subnet_1"]
}

Internet_gateway_info = {
  tags = ["terra_ec2_vpc_igway"]
}

key_name = "Terraform_template_key"

EC2_info = {
  ami              = "ami-0f5ee92e2d63afc18"
  instance_tenancy = "default"
  instance_type    = "t2.micro"
  tags             = ["Terraform_EC2_1"]
}

security_group_info = {
  tags = "Terraform_SG"
}
