locals {
  #Key_pair
  key_path = file("~/.ssh/id_rsa.pub")


  #EC2
  ami            = "ami-0f5ee92e2d63afc18"
  EC2_az         = format("%sa", var.region)
  instance_type  = var.EC2_info.instance_type
  EC2_subnet_id  = aws_subnet.ec2_vpc_public_subnet1[0].id
  EC2_tenancy    = var.EC2_info.instance_tenancy
  user_data_path = file("~/terra_script/apache2.sh")


  #VPC
  vpc_cidr             = var.vpc_info.cidr_block
  vpc_instance_tenancy = var.vpc_info.instance_tenancy
  instance_tenancy     = "default"
  enable_dns_support   = "true"


  #Public Subnet
  public_subnet_count = length(var.Public_Subnet_info.tags)
  public_subnet_az    = format("%sa", var.region)
  public_subnet_cidr  = cidrsubnet(aws_vpc.ec2_vpc.cidr_block, 8, 1)


  #Private Subnet
  Private_subnet_count = length(var.Private_Subnet_info.tags)
  private_subnet_az    = format("%sa", var.region)
  private_subnet_cidr  = cidrsubnet(aws_vpc.ec2_vpc.cidr_block, 8, 2)


  #Public Route table
  All = "0.0.0.0/0"


  #Public Route table subnet association
  Public_rts_count = length(var.Public_Subnet_info.tags)


  #Private Route table subnet association
  Private_rts_count = length(var.Private_Subnet_info.tags)
  
}
