resource "aws_key_pair" "terra_key" {
  key_name = var.key_name
  public_key = local.key_path

  tags = {
    Name = var.key_name
  }
}