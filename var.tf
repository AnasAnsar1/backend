variable "region" {
  type = string
}

variable "vpc_info" {
  type = object({
    cidr_block         = string
    tags               = string
    instance_tenancy   = string
    enable_dns_support = bool
  })

  default = {
    cidr_block         = "192.168.0.0/16"
    instance_tenancy   = "default"
    enable_dns_support = "true"
    tags               = "terra_ec2_vpc"
  }
}

variable "Public_Subnet_info" {
  type = object({
    tags = list(string)
  })

  default = {
    tags = ["terra_ec2_Public_subnet_1"]
  }
}

variable "Private_Subnet_info" {
  type = object({
    tags = list(string)
  })

  default = {
    tags = ["terra_ec2_Private_subnet_1"]
  }
}

variable "Internet_gateway_info" {
  type = object({
    tags = list(string)
  })

  default = {
    tags = ["ec2_vpc_igway"]
  }
}

variable "key_name" {
  type = string

  default = "terra_Template_key"
}

variable "EC2_info" {
  type = object({
    ami              = string
    instance_type    = string
    instance_tenancy = string
    tags             = list(string)
  })

  default = {
    ami              = "ami-0f5ee92e2d63afc18"
    instance_tenancy = "default"
    instance_type    = "t2.micro"
    tags             = ["Terraform_EC2"]
  }
}

variable "security_group_info" {
  type = object({
    tags = string
  })

  default = {
    tags = "Terraform_SG"
  }
}

